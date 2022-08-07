import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/widgets/bottom_navigation.dart';
import '../controllers/account_controller.dart';
import './personal_view.dart';
import './vehicle_view.dart';
import './profile_header_view.dart';

class AccountView extends GetView<AccountController> {
  final account_controller = Get.find<AccountController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Start::Header
              ProfileHeaderView(),
              //End::Header
              PersonalView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
