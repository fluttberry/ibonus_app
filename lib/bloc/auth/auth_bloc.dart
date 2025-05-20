import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_event.dart';
import 'package:ibonus_app/bloc/auth/auth_state.dart';
import 'package:ibonus_app/repository/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<AuthEventGetCity>(_getCity);
    on<AuthEventRegister>(_register);
  }

  AuthRepository authRepository = AuthRepository();
  _getCity(AuthEventGetCity event, emit) async {
    var cities = await authRepository.getCities();
    emit(AuthState(cityModel: cities));
  }

  _register(AuthEventRegister event, emit){
    authRepository.register(event.userRegisterModel);

  }
}
