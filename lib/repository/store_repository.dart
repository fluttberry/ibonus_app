import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ibonus_app/data/shared_pref.dart';
import 'package:ibonus_app/model/store_model.dart';

class StoreRepository {
  Future<StoreModel?> get(String? search, List <String>? type) async {
    var response = await http.get(
      Uri.parse('https://back.ibonus.app/api/v1/stores/?search=$search'),
      headers: {'Authorization': 'token ${SharedPref.getToken()}'},
    );

    print('--${response.body}');
    if (response.statusCode == 200) {
      return StoreModel.fromJson(jsonDecode(response.body));
    }
    return null; 
  }
}
