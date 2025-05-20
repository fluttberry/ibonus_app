import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserRegisterModel {
  String phone;
  String name;
  String lastName;
  int id;
  UserRegisterModel({
    required this.phone,
    required this.name,
    required this.lastName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phone': phone,
      'name': name,
      'lastName': lastName,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());


}
