// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ibonus_app/model/user_register_model.dart';

class AuthEvent {}

class AuthEventGetCity extends AuthEvent{}
class AuthEventRegister extends AuthEvent {
  UserRegisterModel userRegisterModel;
  AuthEventRegister({
    required this.userRegisterModel,
  });
} 

class AuthEventRegisterPassword extends AuthEvent {
  String password;
  String passwordConfirm;
  String sms;
   
  AuthEventRegisterPassword({
    required this.password,
    required this.passwordConfirm,
    required this.sms ,


  });
}