import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/widgets/search.dart';
import 'package:myhino/app/widgets/button.dart';
import 'package:myhino/app/widgets/slider.dart';
import './widget/content_view.dart';

class VideoTrainingView extends GetView {
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
          height: 1000,
          width: 411,
          color: Colors.grey[200],
          child: Column(
            children: [
              SliderView(),
              Search(onTap: () {}, width: 345),
              SizedBox(height: 10),
              ContentView(),
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
