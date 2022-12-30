from flask import Flask, request, jsonify
import json
import base64
from azure.data.tables import TableServiceClient
from azure.data.tables import UpdateMode
from azure.servicebus import ServiceBusClient, ServiceBusMessage
from azure.storage.queue import (
        QueueClient,
)


def azureConn():
    connection_string = "DefaultEndpointsProtocol=https;AccountName=mobilestoragedatc;AccountKey=tXzKzkcD+EkMFn/XBepJwlB0eXrT+O/QtGFEmhmzSVXRItLT2IqwiLBNfUFCQdMZa6icRB/hROWX+ASt4Fbt7Q==;EndpointSuffix=core.windows.net"
    service = TableServiceClient.from_connection_string(conn_str=connection_string)
    return service

def queueConn(q_name):
    connection_string = "DefaultEndpointsProtocol=https;AccountName=mobilestoragedatc;AccountKey=tXzKzkcD+EkMFn/XBepJwlB0eXrT+O/QtGFEmhmzSVXRItLT2IqwiLBNfUFCQdMZa6icRB/hROWX+ASt4Fbt7Q==;EndpointSuffix=core.windows.net"
    #q_name = "user-queue"
    queue_client = QueueClient.from_connection_string(connection_string, q_name)
    return queue_client

app = Flask(__name__)

@app.route("/")
def home():
    return "Everything works."

@app.route('/getuser/<id>', methods=['GET'])
def get_user(id):
    lista = []
    parameters = {"id": id}
    my_filter = "id eq @id"
    service = azureConn()
    table_client = service.get_table_client(table_name="users")
    entities = table_client.query_entities(query_filter=my_filter, parameters = parameters)
    for entity in entities:
        for key in entity.keys():
            lista.append({'id':key,'name':entity[key]})
    return json.dumps(lista)

@app.route('/newuser', methods=['POST'])
def new_user():
    my_entity = {
        "PartitionKey": request.json['id'],
        "RowKey": request.json['name'],
        "id": request.json['id'],
        "name": request.json['name'],
    }
    service = azureConn()
    table_client = service.get_table_client(table_name="users")
    entity = table_client.create_entity(entity=my_entity)
    id = request.json['id']
    name = request.json['name']
    sender = queueConn('user-queue')
    msg = str(id + ',' + name)
    msg_bytes = msg.encode('ascii')
    base64_bytes = base64.b64encode(msg_bytes)
    base64_string = base64_bytes.decode("ascii")
    sender.send_message(base64_string)
    return json.dumps({"msg": "Done"}), 200
            

@app.route('/adduser', methods=['POST'])
def add_user():
    my_entity = {
        "PartitionKey": request.json['id'],
        "RowKey": request.json['name'],
        "id": request.json['id'],
        "name": request.json['name'],
    }
    service = azureConn()
    table_client = service.get_table_client(table_name="users")
    entity = table_client.create_entity(entity=my_entity)
    return json.dumps({"msg": "Done"}), 200

@app.route('/getdangers', methods=['GET'])
def get_dangers():
    lista = []
    service = azureConn()
    table_client = service.get_table_client(table_name="dangers")
    entities = table_client.list_entities()
    for entity in entities:
        lista.append({'type':entity['type'],'latitude':entity['latitude'],'longitude':entity['longitude'],'status':entity['status']})
    return json.dumps(lista)

@app.route('/getdashboarddangers', methods=['GET'])
def get_dashboard_dangers():
    lista = []
    service = azureConn()
    table_client = service.get_table_client(table_name="dangers")
    entities = table_client.list_entities()
    for entity in entities:
        lista.append({'uid':entity['PartitionKey'],'type':entity['type'],'latitude':entity['latitude'],'longitude':entity['longitude'],'status':entity['status']})
    return json.dumps(lista)

@app.route('/getuserdangers/<id>', methods=['GET'])
def get_user_dangers(id):
    lista = []
    parameters = {"id": id}
    my_filter = "PartitionKey eq @id"
    service = azureConn()
    table_client = service.get_table_client(table_name="dangers")
    entities = table_client.query_entities(query_filter=my_filter, parameters = parameters)
    for entity in entities:
        lista.append({'type':entity['type'],'latitude':entity['latitude'],'longitude':entity['longitude'],'status':entity['status']})
    return json.dumps(lista)

@app.route('/update', methods=['PUT'])
def update_dangers():
    latitude = request.json['latitude']
    longitude = request.json['longitude']
    parameters = {"row": str(latitude + longitude)}
    my_filter = "RowKey eq @row"
    service = azureConn()
    table_client = service.get_table_client(table_name="dangers")
    entities = table_client.query_entities(query_filter=my_filter,parameters=parameters)
    for entity in entities:
        entity['status'] = 'solved'
    table_client.update_entity(entity)
    return json.dumps({"msg": "Done"}), 200

@app.route('/delete', methods=['DELETE'])
def delete_dangers():
    uid = request.json['uid']
    latitude = request.json['latitude']
    longitude = request.json['longitude']
    row = str(latitude + longitude)
    service = azureConn()
    table_client = service.get_table_client(table_name="dangers")
    table_client.delete_entity(partition_key = uid,row_key = row)
    return json.dumps({"msg": "Done"}), 200


@app.route('/newdanger', methods=['POST'])
def new_danger():
    id = request.json['id']
    type = request.json['type']
    latitude = request.json['latitude']
    longitude = request.json['longitude']
    status = request.json['status']
    sender = queueConn('danger-queue')
    msg = str(id + ',' + type + ',' + str(latitude) + ',' + str(longitude) + ',' + status)
    msg_bytes = msg.encode('ascii')
    base64_bytes = base64.b64encode(msg_bytes)
    base64_string = base64_bytes.decode("ascii")
    sender.send_message(base64_string)
    return json.dumps({"msg": "Done"}), 200

@app.route('/adddanger', methods=['POST'])
def add_danger():
    my_entity = {
        "PartitionKey": request.json['id'],
        "RowKey": str(request.json['latitude']) + str(request.json['longitude']),
        "type": request.json['type'],
        "latitude": request.json['latitude'],
        "longitude": request.json['longitude'],
        "status": request.json['status']
    }
    service = azureConn()
    table_client = service.get_table_client(table_name="dangers")
    entity = table_client.create_entity(entity=my_entity)
    return json.dumps({"msg": "Done"}), 200

if __name__=="__main__":
    app.run(debug = True, host='0.0.0.0', port = 5000)

