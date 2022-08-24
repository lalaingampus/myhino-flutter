import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:myhino/app/data/models/news_management.dart';
import 'package:myhino/app/data/models/spare_part.dart';
import 'package:myhino/app/data/models/vehicle_management.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/variable.dart';
import './dio_exception.dart';

class DioClient {
  var sessionManager = SessionManager();
  DioClient()
      : _dio = Dio(
          BaseOptions(
              baseUrl: "$baseUrl",
              connectTimeout: 100000,
              receiveTimeout: 100000,
              responseType: ResponseType.json,
              headers: {"content-Type": 'application/json'}),
        );

  late final Dio _dio;

  void updateSharedPreferences(String tokenType, String accessToken,
      String refreshToken, String expiresIn) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('token_type', tokenType);
    _prefs.setString('access_token', accessToken);
    _prefs.setString('refresh_token', refreshToken);
    _prefs.setString('expires_in', expiresIn);

    await sessionManager.set("token_type", tokenType);
    await sessionManager.set("access_token", accessToken);
    await sessionManager.set("refresh_token", refreshToken);
    await sessionManager.set("expires_in", expiresIn);
    await SessionManager().update();
  }

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
      final refreshToken = data["refresh_token"];
      final expiresIn = data['expires_in'];

      result = {
        "token_type": tokenType,
        "expires_in": expiresIn,
        "access_token": accessToken,
        "refresh_token": refreshToken
      };

      _dio.options.headers["Authorization"] = "$tokenType $accessToken";
      updateSharedPreferences(
          "$tokenType", "$accessToken", "$refreshToken", "$expiresIn");
      print("after login");
      // print(_dio.options.headers["authorization"]);

      return result;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      print(e);
      inspect(e);
      throw e.toString();
    }
  }

  Future<List<NewsManagement>> getNews() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    late var result;
    try {
      _dio.options.headers['authorization'] =
          "${_prefs.getString('token_type')} ${_prefs.getString('access_token')}";

      print("news management");
      // print(_dio.options.headers['authorization']);

      final response = await _dio.get('/news-managements');
      result = response.data['data'];
      // print(result['data']);
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }

    List<NewsManagement> news = List<NewsManagement>.from(
        result.map((x) => NewsManagement.fromJson(x)));
    return news;
  }

  Future<List<SparePart>> getSparePart() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    late var result;
    try {
      _dio.options.headers['authorization'] =
          "${_prefs.getString('token_type')} ${_prefs.getString('access_token')}";

      final response = await _dio.get('/spare-parts');
      result = response.data['data'];
      // print(result['data']);
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }

    List<SparePart> sparePart =
        List<SparePart>.from(result.map((x) => SparePart.fromJson(x)));
    return sparePart;
  }

  Future<List<VehicleManagement>> getVehicleManagement() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    late var result;
    try {
      _dio.options.headers['authorization'] =
          "${_prefs.getString('token_type')} ${_prefs.getString('access_token')}";

      final response = await _dio.get('/vehicle-managements');
      result = response.data['data'];
      // print(result['data']);
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }

    List<VehicleManagement> vehicleManagements =
        List<VehicleManagement>.from(result.map((x) => SparePart.fromJson(x)));
    return vehicleManagements;
  }
}
