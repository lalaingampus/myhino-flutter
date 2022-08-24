import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhino/app/data/service/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool passwordVisible = false.obs;

  @override
  void onInit() async {
    super.onInit();
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    bool tokenTypeExist = await SessionManager().containsKey("token_type");
    bool accessTokenExist = await SessionManager().containsKey("access_token");

    if (tokenTypeExist && accessTokenExist) {
      String tokenType = await SessionManager().get("token_type");
      String accessToken = await SessionManager().get("access_token");
      if (tokenType != null && accessToken != null) {
        if (_prefs.getString('token_type') == null &&
            _prefs.getString('access_token') == null) {
          _prefs.setString('token_type', tokenType);
          _prefs.setString('access_token', accessToken);
        }
        Get.toNamed("home");
      }
    }
  }

  @override
  void onClose() {}

  void changePasswordToggle() {
    passwordVisible.toggle();
  }

  login(BuildContext context) async {
    bool? obj = await UserService().login(
      username: username.text,
      password: password.text,
    );

    if (obj == true) {
      Get.toNamed("home");
    }
  }
}
