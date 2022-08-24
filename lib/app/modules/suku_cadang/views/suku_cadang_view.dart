import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/suku_cadang_controller.dart';
import 'package:myhino/app/widgets/add_button.dart';

import 'package:myhino/app/widgets/paginations.dart';
import './widget/content.dart';
import 'package:myhino/app/widgets/search.dart';

class SukuCadangView extends GetView<SukuCadangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spare Parts"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('booking-service');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 1280,
          width: 411,
          color: Colors.grey[200],
          child: Column(
            children: [
              AddButton(
                  height: 80,
                  width: 411,
                  title: "Katalog Spare Parts",
                  onTap: () {}),
              Container(
                height: 230,
                width: 411,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/mobile/images/header-contact.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Search(onTap: () {}, width: 345),
              SizedBox(height: 10),
              // Start::Content
              InfoView(),
              // End:: Content

              SizedBox(height: 5),
              PaggingButton(currentPage: 1, totalPage: 20),
            ],
          ),
        ),
      ),
    );
  }
}
