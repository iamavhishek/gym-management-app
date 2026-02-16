import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/models/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(UserModel user) = _Authenticated;
  const factory AuthState.unauthenticated([String? error]) = _Unauthenticated;
  const factory AuthState.success(String message) = _Success;
}
