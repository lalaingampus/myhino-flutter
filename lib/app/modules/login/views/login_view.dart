
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final login_controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/mobile/images/bg-login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                      'assets/mobile/images/logo-hino-vertical.png'),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 15,
                          bottom: 20,
                          right: 20,
                          top: 10), //apply padding to some sides only
                      child: Text(
                        "Hallo! \nSelamat Datang",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 15,
                          bottom: 0,
                          right: 0,
                          top: 10), //apply padding to some sides only
                      child: Text(
                        'Email/No. HP',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: login_controller.username,
                    decoration: const InputDecoration(
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: FaIcon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      labelText: 'User Name',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Forgot Password
                            Get.toNamed("forgot-password");
                          },
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: login_controller.passwordVisible.value,
                    controller: login_controller.password,
                    decoration: const InputDecoration(
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: FaIcon(
                          FontAwesomeIcons.key,
                          color: Colors.white,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 410,
                  margin: const EdgeInsets.only(top: 20.0, bottom: 20),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Get.toNamed("home");
                      login_controller.login(context);
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      fixedSize: const Size(240, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 410,
                  margin: const EdgeInsets.only(top: 0.0, bottom: 20),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      //MainHome
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/mobile/images/icon-google.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      fixedSize: const Size(240, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "belum punya akun ? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //SignUp
                        Get.toNamed("signup");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
