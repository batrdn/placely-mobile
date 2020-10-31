import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthenticationService {
  static Future<http.Response> login(String phoneNumber, String password) {
    return http.post('http://192.168.1.4:8099/keycloak/aim/login',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, Object>{
          'tenant': 'master',
          'username': phoneNumber,
          'password': password,
          'is2fa': false
        }));
  }
}
