import 'dart:convert';

import 'package:http/http.dart' as http;

class RegistrationService {
  static Future<http.Response> register(String phoneNumber, String password,
      String confirmPassword) {
    return http.post('http://10.0.2.2:8099/keycloak/aim/register',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, Object>{
          'tenant': 'master',
          'username': phoneNumber,
          'password': password,
          'confirmPassword': confirmPassword
        }));
  }
}
