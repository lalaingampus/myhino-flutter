import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/widgets/splash.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            // return GetMaterialApp(
            //   title: "Application",
            //   //initialRoute: AppPages.INITIAL,
            //   initialRoute: Routes.LOGIN,
            //   getPages: AppPages.routes,
            // );
            return GetMaterialApp(
                title: 'Authentication Manager',
                theme: ThemeData(
                  primarySwatch: Colors.purple,
                ),
                home: SplashScreen());
          }
        });
  }
}
