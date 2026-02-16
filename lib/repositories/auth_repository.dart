import 'dart:convert';

import 'package:gym_management_app/config/constants.dart';
import 'package:gym_management_app/models/user_model.dart';
import 'package:gym_management_app/repositories/api_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final ApiRepository _apiRepository = ApiRepository();

  Future<UserModel> login(String email, String password) async {
    final response = await _apiRepository.post(
      '/auth/login',
      body: {'email': email, 'password': password},
    );

    final data = response['data'];
    final token = data['token'];
    final userJson = data['user'];

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppConstants.authTokenKey, token as String);
    await prefs.setString(AppConstants.userRoleKey, userJson['role'] as String);
    await prefs.setString(AppConstants.userIdKey, userJson['id'] as String);
    await prefs.setString('user_data', jsonEncode(userJson));

    return UserModel.fromJson(userJson as Map<String, dynamic>);
  }

  Future<void> register(
    String email,
    String password,
    String firstName,
    String lastName,
    String role,
  ) async {
    await _apiRepository.post(
      '/auth/register',
      body: {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'role': role,
      },
    );
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(AppConstants.authTokenKey);
  }

  Future<UserModel?> getStoredUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString('user_data');
    if (userData != null) {
      try {
        return UserModel.fromJson(jsonDecode(userData) as Map<String, dynamic>);
      } catch (e) {
        return null;
      }
    }
    return null;
  }
}
