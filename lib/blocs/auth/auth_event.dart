import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = _Login;
  const factory AuthEvent.register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) = _Register;
  const factory AuthEvent.logout() = _Logout;
}
