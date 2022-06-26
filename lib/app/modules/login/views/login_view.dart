import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';

import '../../../providers/auth_custom.dart';
import '../../home/views/home_view.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Phone: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      Provider.of<AuthCustom>(context, listen: false)
          .login(data.name, data.password);
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'MyHino',
      logo: AssetImage('assets/images/logo-hino-vertical.png'),
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeView(),
        ));
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
          primaryColor: Colors.red,
          accentColor: Colors.white,
          cardTheme: CardTheme(
            color: Colors.white,
            elevation: 0,
          ),
          inputTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.zero,
          )),
    );
  }
}
