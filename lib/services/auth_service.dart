import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_connect/models/user.dart';

class AuthService {
  final _storage = SharedPreferences.getInstance();
  User? _currentUser;

  User? get currentUser => _currentUser;

  Future<bool> login(String email, String password) async {
    try {
      // API 호출 구현
      final response = await http.post(
        Uri.parse('your-api-url/login'),
        body: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final userData = json.decode(response.body);
        _currentUser = User.fromJson(userData);
        // 토큰 저장
        final prefs = await _storage;
        await prefs.setString('token', userData['token']);
        return true;
      }
      return false;
    } catch (e) {
      print('로그인 에러: $e');
      return false;
    }
  }
} 