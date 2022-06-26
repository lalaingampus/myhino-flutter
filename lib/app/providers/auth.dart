import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  Future<void> signup(String email, String password) async {
    Uri url = Uri.parse(dotenv.env['DEVELOPMENT_AUTH_HOST'] ?? "");

    try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
        }),
      );

      var responseData = json.decode(response.body);

      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }
    } catch (error) {
      throw error;
    }
  }

  doLogin(String email, String password) async {
    Uri url = Uri.parse(dotenv.env['DEVELOPMENT_AUTH_HOST'] ?? "");
    if (url == "") {
      print("url is null " + url.toString());
    } else {
      print("url is not null " + url.toString());
    }

    try {
      var response = await http.post(
        url,
        body: json.encode({
          "username": email,
          "password": password,
        }),
      );

      var responseData = json.decode(response.body);

      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }
    } catch (error) {
      throw error;
    }
  }
}
