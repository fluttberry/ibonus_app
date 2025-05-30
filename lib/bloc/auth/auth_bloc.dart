import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_event.dart';
import 'package:ibonus_app/bloc/auth/auth_state.dart';
import 'package:ibonus_app/data/shared_pref.dart';
import 'package:ibonus_app/repository/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<AuthEventGetCity>(_getCity);
    on<AuthEventRegister>(_register);
    on<AuthEventRegisterPassword>(_registerPassword);
  }

  AuthRepository authRepository = AuthRepository();

  _registerPassword(AuthEventRegisterPassword event, emit) async {
    emit(state.copyWith(loading: true));
    // bool success = await authRepository.registerPassword(
    //   event.password,
    //   event.passwordConfirm,
    //   event.sms,
    // );
    // if (state.success){
    //   SharedPref.saveToken();
    // }
    // print('---bloc${success}');
    emit(state.copyWith(successPassword: success, loading: false));
  }

  _getCity(AuthEventGetCity event, emit) async {
    var cities = await authRepository.getCities();
    emit(AuthState(cityModel: cities));
  }

  _register(AuthEventRegister event, emit) async {
    emit(state.copyWith(loading: true));
    bool success = await authRepository.register(event.userRegisterModel);
    emit(state.copyWith(success: success, loading: false));
  }
}
