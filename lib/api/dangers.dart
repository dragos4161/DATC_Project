// To parse this JSON data, do
//
//     final dangers = dangersFromJson(jsonString);

import 'dart:convert';

List<Dangers> dangersFromJson(String str) => List<Dangers>.from(json.decode(str).map((x) => Dangers.fromJson(x)));

String dangersToJson(List<Dangers> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Dangers {
  Dangers({
    required this.uid,
    required this.type,
    required this.latitude,
    required this.logitude,
    required this.status,
  });

  String uid;
  String type;
  double latitude;
  double logitude;
  String status;

  factory Dangers.fromJson(Map<String, dynamic> json) => Dangers(
    uid: json["uid"],
    type: json["type"],
    latitude: json["latitude"].toDouble(),
    logitude: json["logitude"].toDouble(),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "type": type,
    "latitude": latitude,
    "logitude": logitude,
    "status": status,
  };
}
