import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:myhino/app/widgets/button.dart';
import 'package:myhino/app/widgets/slider.dart';
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
              SliderView(),
              SizedBox(
                child: TabBar(
                  controller: htc_controller.tabController, // * 3.1
                  labelColor: Colors.black87,
                  labelStyle: const TextStyle(fontSize: 18),
                  unselectedLabelColor: Colors.grey,
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
              SizedBox(
                width: double.maxFinite, //  * 4.1
                height: 300, //  * 4.2
                child: TabBarView(
                  controller: htc_controller.tabController, // * 3.2
                  children: [ContentView(), AktivitasView(), ProfileView()],
                ),
              ),
              SizedBox(height: 10),
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
