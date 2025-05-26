// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ibonus_app/model/city_model.dart';

class AuthState {
  CityModel? cityModel;
  bool loading;
  bool success;
  AuthState ({this.cityModel, this.loading = false, this.success = false});

  AuthState copyWith({
    CityModel? cityModel,
    bool? loading,
    bool? success,
  }) {
    return AuthState(
      cityModel: cityModel ?? this.cityModel,
      loading: loading ?? this.loading,
      success: success ?? false
    );
  
  }
}
