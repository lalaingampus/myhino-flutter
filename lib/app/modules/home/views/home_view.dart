import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import '../controllers/home_controller.dart';

import 'package:myhino/app/widgets/bottom_navigation.dart';
import './header_view.dart';
import './menu_view.dart';
import 'package:myhino/app/widgets/slider.dart';
import './berita_promosi_view.dart';
import './information_view.dart';
import './social_media_view.dart';

class HomeView extends GetView<HomeController> {
  List news = [];

  Future<void> loadCountryData() async {
    try {
      // we can access builtin asset bundle with rootBundle
      final data =
          await rootBundle.loadString("json/mobile/news-management.json");
      news = json.decode(data);
    } catch (e) {
      Get.snackbar("Ops Something Wrong!!", e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Row(
          children: [
            Image.asset(
              'assets/mobile/images/logo-hino-horizontal.png',
              fit: BoxFit.contain,
              height: 23,
            )
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    HeaderView(),
                    SliderView(),
                    MenuView(),
                    SizedBox(height: 13),
                    Container(
                      height: 0.5,
                      width: 395,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 13),
                    BeritaPromosiView(),
                    SizedBox(height: 13),
                    Container(
                      height: 0.5,
                      width: 395,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5),
                    InformationView(),
                    SizedBox(height: 5),
                    Container(
                      height: 0.5,
                      width: 395,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    SocialMediaView(),
                  ],
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
