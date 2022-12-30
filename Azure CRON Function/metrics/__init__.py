import datetime

import azure.functions as func
from azure.data.tables import TableServiceClient

def azureConn():
    connection_string = "DefaultEndpointsProtocol=https;AccountName=mobilestoragedatc;AccountKey=tXzKzkcD+EkMFn/XBepJwlB0eXrT+O/QtGFEmhmzSVXRItLT2IqwiLBNfUFCQdMZa6icRB/hROWX+ASt4Fbt7Q==;EndpointSuffix=core.windows.net"
    service = TableServiceClient.from_connection_string(conn_str=connection_string)
    return service


def main(mytimer: func.TimerRequest) -> None:
    utc_timestamp = datetime.datetime.utcnow().replace(
        tzinfo=datetime.timezone.utc).isoformat()
    
    solved_dangers = 0
    total_dangers = 0
    service = azureConn()
    table = service.get_table_client(table_name = 'dangers')
    entities = table.list_entities()
    for entity in entities:
        total_dangers += 1
        if entity['status'] == 'solved':
            solved_dangers += 1
    
    stats = service.get_table_client('statistics')
    stat = {
        'PartitionKey': str(utc_timestamp),
        'RowKey': (str(total_dangers) + str(solved_dangers)),
        'total': total_dangers,
        'solved': solved_dangers
        }
    stats.create_entity(stat)

