import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/modules/home/views/header_view.dart';
import '../controllers/product_controller.dart';
import 'widget/content_hino_view.dart';
import 'widget/content_hino_new_view.dart';
import 'widget/header_hino_view.dart';
import 'widget/header_hino_new_view.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            HeaderHinoNewView(),
            SizedBox(height: 0),
            ContentHinoNewView(),
            SizedBox(height: 0),
            HeaderHinoView(),
            SizedBox(height: 0),
            ContentHinoView(),
          ],
        ),
      ),
    );
  }
}
