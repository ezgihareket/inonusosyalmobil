import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:insta_ui_kit/dtos/login_dto.dart';
import 'package:insta_ui_kit/dtos/register_dto.dart';

class UserService {
  static UserService _instance = UserService._internal();
  UserService._internal();
  factory UserService() {
    return _instance;
  }

  static String baseUrl = 'http://10.0.2.2:8080/api/users';
  static Future loginUser(LoginDto loginDto) async {
    var url = Uri.parse(baseUrl + '/authenticate');
    String body = json.encode(loginDto.toJson());

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: body,
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    return null;
  }

  static Future registerUser(RegisterDto registerDto) async {
    var url = Uri.parse(baseUrl + '/register');
    String body = json.encode(registerDto.toJson());

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: body,
    );

    if (response.statusCode == 200) {
      print(response.body);
      return null;

    }
    return 'Lütfen başka bir email giriniz!';
  }
}
