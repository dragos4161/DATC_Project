import 'student.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
const String baseUrl = 'http://10.0.2.2:5000/students';
class RemoteServices
{
  Future<List<Student>?> getStudents(String id) async
  {
    var client = http.Client();

    var uri = Uri.parse('http://10.0.2.2:5000/studentid/' + id);
    var response = await client.get(uri);
    if(response.statusCode == 200)
    {
      var json = response.body;
      return studentFromJson(json);
    }
  }

  Future<dynamic> postStudent(dynamic object) async {
    var url = Uri.parse(baseUrl);
    var client = http.Client();
    var _payload = json.encode(object);
    var _headers = {
      'Content-Type':'application/json',
    };

    var response = await client.post(url, body: _payload, headers: _headers);
    var json1 = response.body;
  }
}