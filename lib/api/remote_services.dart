import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:city_dangers_alert/api/user.dart';
const String baseUrl = 'http://10.0.2.2:5000/students';
class RemoteServices
{

  Future<UserData?> getUser(String id) async {
    var client = http.Client();

    var uri = Uri.parse('http://10.0.2.2:5000/user/' + id);
    var response = await client.get(uri);
    if (response.statusCode == 200){
      var json = response.body;
      return userFromJson(json);
    }
  }

  Future<dynamic> postUser(dynamic object) async {
    var url = Uri.parse('http://10.0.2.2:5000/adduser');
    var client = http.Client();
    var _payload = json.encode(object);
    var _headers = {
      'Content-Type':'application/json',
    };

    await client.post(url, body: _payload, headers: _headers);
  }

}