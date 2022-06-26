import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  // Future<String?> _recoverPassword(String name) {
  //   debugPrint('Name: $name');
  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(name)) {
  //       return 'User not exists';
  //     }
  //     return null;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ForgotPasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ForgotPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
