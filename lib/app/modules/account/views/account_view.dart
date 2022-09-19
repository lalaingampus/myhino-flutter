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
              ProfileHeaderView(),
              SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: account_controller.tabController, // * 3.1
                    labelColor: Colors.red,
                    labelPadding: EdgeInsets.only(left: 20, right: 20),
                    labelStyle: const TextStyle(fontSize: 18),
                    unselectedLabelColor: Colors.grey,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 2.0, color: Colors.red),
                        insets: EdgeInsets.symmetric(horizontal: 10.0)
                    ),
                    isScrollable: true, // can scroll horizontal axis

                    tabs: [
                      Tab(
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Personal',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
                          ),
                        ),

                      ),
                      Tab(
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Vehicle',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ),

                      ),
                    ],
                  ),
                ),

              ),
              SizedBox(
                width: double.maxFinite, //  * 4.1
                height: double.maxFinite, //  * 4.2
                child: TabBarView(
                  controller: account_controller.tabController, // * 3.2
                  children: [PersonalView(), VehicleView()],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
