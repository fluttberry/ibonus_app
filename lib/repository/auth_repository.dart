import 'dart:convert';

import 'package:ibonus_app/model/city_model.dart';
import 'package:http/http.dart' as http;
import 'package:ibonus_app/model/user_register_model.dart';

class AuthRepository {
  Future<CityModel?> getCities() async {
    var response = await http.get(
      Uri.parse('https://back.ibonus.app/api/v1/geo/cities/'),
    );
    if (response.statusCode == 200) {
      return CityModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    }
  }

  Future<bool> register(UserRegisterModel user) async {
    var response = await http.post(
      Uri.parse('https://back.ibonus.app/api/v1/accounts/register/'),
      body: user.toJson(),
    );
    return response.statusCode == 201;
  }
}
