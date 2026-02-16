import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_event.dart';
import 'package:gym_management_app/blocs/auth/auth_state.dart';
import 'package:gym_management_app/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authService;

  AuthBloc(this._authService) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const AuthState.loading());
          try {
            final user = await _authService.getStoredUser();
            if (user != null) {
              emit(AuthState.authenticated(user));
            } else {
              emit(const AuthState.unauthenticated());
            }
          } catch (e) {
            emit(
              const AuthState.unauthenticated('Failed to check auth status'),
            );
          }
        },
        login: (email, password) async {
          emit(const AuthState.loading());
          try {
            final user = await _authService.login(email, password);
            emit(AuthState.authenticated(user));
          } catch (e) {
            emit(AuthState.unauthenticated(e.toString()));
          }
        },
        register: (email, password, firstName, lastName) async {
          emit(const AuthState.loading());
          try {
            await _authService.register(
              email,
              password,
              firstName,
              lastName,
              'member',
            );
            emit(const AuthState.success('Account created! Please login.'));
          } catch (e) {
            emit(AuthState.unauthenticated(e.toString()));
          }
        },
        logout: () async {
          await _authService.logout();
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}
