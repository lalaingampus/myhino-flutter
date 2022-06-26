import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: <Widget>[
                Center(
                    child: Container(
                  width: Get.width * 0.5,
                  height: Get.height * 0.5,
                  child: Image.asset("assets/images/logo-b2c.png"),
                )),
              ],
            )));
  }
}
