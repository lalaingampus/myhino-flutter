import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhino/app/data/service/user_service.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool passwordVisible = false.obs;



  @override
  void onClose() {}

  void changePasswordToggle() {
    passwordVisible.toggle();
  }

  login(BuildContext context) async {
    Map<String, dynamic> obj = await UserService().login(
      username: username.text,
      password: password.text,
    );

    inspect(obj);
    // if (obj['statusCode'] == 200) {
    //   CoolAlert.show(
    //     context: Get.context!,
    //     type: CoolAlertType.success,
    //     title: 'Success Login',
    //     text: 'Your login!',
    //     onConfirmBtnTap: () => Get.toNamed('home'),
    //   );
    // } else if (obj['statusCode'] == 500) {
    //   CoolAlert.show(
    //     context: Get.context!,
    //     type: CoolAlertType.error,
    //     title: 'Fail Login',
    //     text: obj['data']['error']['message'],
    //     onConfirmBtnTap: () => Get.back(),
    //   );
    // }
  }
}
