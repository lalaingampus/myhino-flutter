import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
                  child: Image.asset("assets/images/setting.png"),
                )),
              ],
            )));
  }
}
