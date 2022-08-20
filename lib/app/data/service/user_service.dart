import 'dart:developer';
import 'dart:convert';
import 'dart:ffi';

import 'package:myhino/app/helpers/dio_client.dart';

class UserService {
  Future<bool>? login(
      {required String username, required String password}) async {
    try {
      await DioClient().login(username: username, password: password);

      return Future.value(true);
    } catch (e) {
      print(e);
    }

    return Future.value(false);
  }
}
