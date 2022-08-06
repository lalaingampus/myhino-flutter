import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import 'package:myhino/app/widgets/home/header.dart';
import 'package:myhino/app/widgets/home/menu/product/headerHino.dart';
import 'package:myhino/app/widgets/home/menu/product/headerNewHino.dart';
import 'package:myhino/app/widgets/home/menu/product/content.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed("home");
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          HeaderSection(),
          SizedBox(height: 0),
          ContentSection(),
          SizedBox(height: 0),
          HeaderHinoSection(),
          SizedBox(height: 0),
          ContentHinoSection(),
        ],
      ),
    );
  }
}
