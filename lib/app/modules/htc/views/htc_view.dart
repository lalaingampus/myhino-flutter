import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:myhino/app/widgets/button.dart';
import 'package:myhino/app/widgets/slider_htc.dart';
import '../controllers/htc_controller.dart';
import './widget/content_view.dart';
import './widget/aktivitas_view.dart';
import './widget/profile_view.dart';

class HtcView extends GetView<HtcController> {
  final htc_controller = Get.put(HtcController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HINO Training Centre (HTC)"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              SliderHTCView(),
              SizedBox(
                child: TabBar(
                  controller: htc_controller.tabController, // * 3.1
                  labelColor: Colors.red,
                  labelPadding: EdgeInsets.only(left: 35, right: 35),
                  labelStyle: const TextStyle(fontSize: 18),
                  unselectedLabelColor: Colors.grey,
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 2.0, color: Colors.red),
                      insets: EdgeInsets.symmetric(horizontal: 10.0)
                  ),
                  isScrollable: true, // can scroll horizontal axis

                  tabs: [
                    Tab(
                      child: Text('Training'),
                    ),
                    Tab(
                      child: Text('Aktivitas'),
                    ),
                    Tab(
                      child: Text('Profile'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35),
              SizedBox(
                width: double.maxFinite, //  * 4.1
                height: 360, //  * 4.2
                child: TabBarView(
                  controller: htc_controller.tabController, // * 3.2
                  children: [ContentView(), AktivitasView(), ProfileView()],
                ),
              ),
              SizedBox(height: 0),
              Container(
                child: Column(
                  children: [
                    Button(
                        onTap: () {},
                        height: 60,
                        width: 400,
                        title: 'Instagram HTC'),
                    Button(
                        onTap: () {},
                        height: 60,
                        width: 400,
                        title: 'Website HTC')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
