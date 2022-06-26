import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import '../../../providers/auth.dart';
import '../../home/views/home_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  // Future<String?> _authUser(LoginData data) {
  //   debugPrint('Phone: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     Provider.of<Auth>(context, listen: false)
  //         .login(data.name, data.password);
  //     return null;
  //   });
  // }

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
                image: AssetImage("assets/images/bg-login.png"),
                fit: BoxFit.cover,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child:
                          Image.asset('assets/images/logo-hino-vertical.png')),
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
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: nameController,
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
                            borderSide:
                                BorderSide(color: Colors.red, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: 'User Name',
                          labelStyle: TextStyle(color: Colors.white)),
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
                            'Password',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: !_passwordVisible,
                      controller: passwordController,
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
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                      height: 50,
                      margin: const EdgeInsets.only(top: 20.0, bottom: 20),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Log In'),
                        onPressed: () {
                          print(nameController.text);
                          print(passwordController.text);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            fixedSize: const Size(240, 80),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  Container()
                ],
              )),
        ));
  }
}
