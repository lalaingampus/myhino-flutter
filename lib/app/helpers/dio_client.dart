import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:myhino/app/data/models/news_management_model.dart';
import '../constants/variable.dart';
import './dio_exception.dart';

class DioClient {
  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: "$baseUrl",
            connectTimeout: 5000,
            receiveTimeout: 3000,
            responseType: ResponseType.json,
          ),
        );

  late final Dio _dio;

  // HTTP request methods will go here

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
      final response = await _dio.post('/register',
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
    print("inside login service");

    Map<String, dynamic> result = {
      "token_type": null,
      "expires_in": null,
      "access_token": null,
      "refresh_token": null
    };

    try {
      final response = await _dio.post(
        '/login',
        data: {"username": username, "password": password},
        options: Options(
          validateStatus: (status) => true,
        ),
      );

      var data = jsonDecode(response.toString());

      final tokenType = data['token_type'];
      final accessToken = data["access_token"];

      result = {
        "token_type": tokenType,
        "expires_in": data['expires_in'],
        "access_token": accessToken,
        "refresh_token": data["refresh_token"]
      };

      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers["authorization"] = "$tokenType $accessToken";

      return result;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      print(e);
      throw e.toString();
    }
  }

  Future<NewsManagement?> getNews() async {
    final response = await _dio.get('/news-managements/');
    return NewsManagement.fromJson(response.data);
  }
}
