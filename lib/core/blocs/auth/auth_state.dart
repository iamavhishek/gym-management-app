import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated(UserModel user) = AuthAuthenticated;
  const factory AuthState.unauthenticated([String? error]) =
      AuthUnauthenticated;
  const factory AuthState.success(String message) = AuthSuccess;
}
