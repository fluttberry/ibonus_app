import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_event.dart';
import 'package:ibonus_app/bloc/auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc (): super (AuthState()){
on <AuthEventGetCity>(_getCity);
  }
  _getCity(AuthEventGetCity event, emit){
    
  }
}