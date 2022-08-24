import 'dart:developer';
import 'dart:convert';
import 'dart:ffi';

import 'package:myhino/app/helpers/dio_client.dart';

class UserService {
  Future<bool>? login(
      {required String username, required String password}) async {
    try {
      await DioClient().login(username: username, password: password);

      return true;
    } catch (e) {
      print(e);
    }

    return false;
  }
}
