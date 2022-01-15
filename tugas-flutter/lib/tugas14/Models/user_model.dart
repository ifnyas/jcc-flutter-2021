import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String title, value, id;
  DateTime createdAt;

  UserModel({
    required this.title,
    required this.value,
    required this.id,
    required this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        title: json["title"],
        value: json["value"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "value": value,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
      };
}
