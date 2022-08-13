import 'dart:developer';

import 'package:myhino/app/constants/variable.dart';
import 'package:myhino/app/data/models/tokens.dart';
import 'package:dio/dio.dart';

class UserService {
  final dio = Dio();

  Future<Map<String, dynamic>> register(
      {required String namaLengkap,
      required String noHandPhone,
      required String email,
      required String referralCode,
      required String password}) async {
    Map<String, dynamic> ret = {
      "statusCode": 500,
      "data": [],
      "message": "Error"
    };
    try {
      final response = await dio.post('$baseUrl/register',
          data: {
            "nama_lengkap": namaLengkap,
            "no_handphone": noHandPhone,
            "referral_code": referralCode,
            "email": email,
            "password": password
          },
          options: Options(
            validateStatus: (status) => true,
          ));
      ret = {
        "statusCode": response.statusCode,
        "data": response.data,
        "message": response.statusMessage
      };
    } catch (e) {
      print(e);
    }

    return ret;
  }

  Future<Map<String, dynamic>> login(
      {required String username, required String password}) async {
    Map<String, dynamic> ret = {
      "tokenType": "Bearer",
      "expiresIn": "",
      "accessToken": "",
      "refreshToken": ""
    };

    try {
      final response = await dio.post('$baseUrl/login',
          data: {"username": username, "password": password},
          options: Options(
            validateStatus: (status) => true,
          ));
      // var token = Token(response);
      inspect(response);
    } catch (e) {
      print(e);
    }

    return ret;
  }
}
