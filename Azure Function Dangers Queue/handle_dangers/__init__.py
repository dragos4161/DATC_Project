import azure.functions as func
import requests


def main(msg: func.QueueMessage) -> None:
    url = 'https://apidatcapp.azurewebsites.net/adddanger'
    messages = msg.get_body().decode('utf-8')
    split_message = str(messages).split(',')
    my_obj = {'id': split_message[0],'type':split_message[1], 'latitude': split_message[2], 'longitude': split_message[3], 'status': split_message[4]}
    requests.post(url, json=my_obj, headers={'Content-Type':'application/json',})
