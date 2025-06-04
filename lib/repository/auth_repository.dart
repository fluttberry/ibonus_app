import 'dart:convert';
import 'package:ibonus_app/data/shared_pref.dart';
import 'package:ibonus_app/model/city_model.dart';
import 'package:http/http.dart' as http;
import 'package:ibonus_app/model/user_register_model.dart';

class AuthRepository {
  Future<dynamic> getCities() async {
    http.Response response = await http.get(
      Uri.parse('https://back.ibonus.app/api/v1/geo/cities/'),
    );
    if (response.statusCode == 200 || response.statusCode == 200) {
      return CityModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    }
    
  }

  Future<bool> register(UserRegisterModel user) async {
    http.Response response = await http.post(
      Uri.parse('https://back.ibonus.app/api/v1/accounts/register/'),
      body: user.toJson(),
      headers: {'Content-type': 'application/json'},
    );
    print('----${response.body}');
    return response.statusCode == 201 || response.statusCode == 200;
  }

 

Future<bool> registerPassword(String password, String passwordConfirm, String sms) async {
    http.Response response = await http.post(
      Uri.parse('https://back.ibonus.app/api/v1/accounts/send/verify-code/$sms'),
      body: jsonEncode ({
        'password': password,
        'password_confirm': passwordConfirm,
      }),
      headers: {'Content-type': 'application/json'},
    );
    if (response.statusCode == 201 || response.statusCode == 200){
    var token = jsonDecode(response.body)['token'];
    SharedPref.saveToken(token);
    return true;
    }
    print('----${response.body}');
    print('----${response.statusCode}');
    return false;
  }

  // Future<bool> verify(String pass1, String pass2, String code) async {
  //   http.Response response = await http.post(
  //     Uri.parse(
  //       'https://back.ibonus.app/api/v1/accounts/send/verify-code/$code',
  //     ),
  //     body: {'password': pass1, 'password_confirm': pass2},
  //     headers: {'Content-type': 'application/json'},
  //   );
  //   return response.statusCode == 201 || response.statusCode == 200;
  // }
}
