import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences _pref;

  static init ()async{
    _pref = await SharedPreferences.getInstance();
  }

  static String getToken (){
   return _pref.getString('token')??'';
  }

  static void saveToken (String token){
    _pref.setString('token', token);
  }
} 