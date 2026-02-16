import 'dart:convert';

import 'package:gym_management_app/config/constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiRepository {
  static const String baseUrl = AppConstants.apiBaseUrl;

  Future<Map<String, String>> _getHeaders() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(AppConstants.authTokenKey);
    return {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  Future<dynamic> get(String endpoint, {Map<String, String>? params}) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: params);
    final headers = await _getHeaders();

    try {
      final response = await http.get(uri, headers: headers);
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<dynamic> post(String endpoint, {dynamic body}) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();

    try {
      final response = await http.post(
        uri,
        headers: headers,
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<dynamic> put(String endpoint, {dynamic body}) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();

    try {
      final response = await http.put(
        uri,
        headers: headers,
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<dynamic> delete(String endpoint) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();

    try {
      final response = await http.delete(uri, headers: headers);
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) return {};
      return jsonDecode(response.body);
    } else {
      Map<String, dynamic> body;
      try {
        body = jsonDecode(response.body) as Map<String, dynamic>;
      } catch (e) {
        throw Exception('Server error: ${response.statusCode}');
      }
      throw Exception(body['message'] ?? 'Unknown error occurred');
    }
  }
}
