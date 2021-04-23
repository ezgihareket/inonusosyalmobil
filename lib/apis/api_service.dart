import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;
import 'package:insta_ui_kit/dtos/login_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';



class APIService {
  Future loginUser(String username, String password) async {
    var url = Uri.parse('http://10.0.2.2:8080/api/users/authenticate');
    String body = json.encode({'username': username, 'password': password});

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

}












/*import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:insta_ui_kit/dtos/login_dto.dart';

class APIService{
  Future<LoginResponse> login(LoginRequest request) async{

    var url = Uri.parse('http://10.0.2.2:8080/api/users/authenticate');

   /* Map<String, String> requestHeaders = {
      'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8',
      'Accept': 'application/json',
      //'Authorization': '<Your token>'
    };*/

    final response = await http.post(
        url,
        body: request.toJson(),
        headers: {"Content-Type": "application/json"}
        );
    if(response.statusCode == 200){

      return LoginResponse.fromJson(json.decode(response.body));

    }else{
      throw Exception("hata");
    }
  }
}*/
