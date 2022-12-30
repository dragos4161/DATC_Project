import azure.functions as func
import requests

def main(msg: func.QueueMessage) -> None:
    url = 'https://apidatcapp.azurewebsites.net/adduser'
    message = msg.get_body().decode('utf-8')
    split_message = str(message).split(',')
    my_obj = {'id': split_message[0],'name':split_message[1]}
    requests.post(url, json=my_obj, headers={'Content-Type':'application/json',})
