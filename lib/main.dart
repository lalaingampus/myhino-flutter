import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';
import 'app/providers/auth_custom.dart';

void main() {
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
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (ctx) => AuthCustom())
              ],
              builder: (context, child) => GetMaterialApp(
                title: "Application",
                //initialRoute: AppPages.INITIAL,
                initialRoute: Routes.LOGIN,
                getPages: AppPages.routes,
              ),
            );
          }
        });
  }
}
