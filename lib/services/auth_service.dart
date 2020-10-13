import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthenticationService {
  static Future<http.Response> login(String username, String password) {
    print(password);
    return http.post('http://10.0.2.2:8099/keycloak/aim/login',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, Object>{
          'tenant': 'master',
          'username': username,
          'password': password,
          'is2fa': false
        }));
  }
}
