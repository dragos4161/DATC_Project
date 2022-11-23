import 'dart:convert';

UserData userFromJson(String str) => UserData.fromJson(json.decode(str));

String userToJson(UserData data) => json.encode(data.toJson());

class UserData {
  UserData({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}