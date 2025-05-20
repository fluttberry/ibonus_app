import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserRegisterModel {
  String phone;
  String name;
  String lastName;
  int cityId;
  UserRegisterModel({
    required this.phone,
    required this.name,
    required this.lastName,
    required this.cityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phone': phone,
      'first_name': name,
      'last_name': lastName,
      'id': cityId,
    };
  }

  String toJson() => json.encode(toMap());


}
