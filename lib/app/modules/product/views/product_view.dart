import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/modules/home/views/header_view.dart';
import '../controllers/product_controller.dart';
import './content_hino_view.dart';
import './header_hino_view.dart';

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
          HeaderView(),
          SizedBox(height: 0),
          Container(
            child: Column(
              children: [
                Container(
                  height: 430,
                  width: 411,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HinoProfiaPage()));
                            },
                            child: Container(
                              height: 180,
                              width: 180,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-profia-euro.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HinoBusPage()));
                            },
                            child: Container(
                              height: 180,
                              width: 180,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-bus-euro.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HinoRangerPage()));
                            },
                            child: Container(
                              height: 180,
                              width: 180,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-ranger-euro.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HinoDutroPage()));
                            },
                            child: Container(
                              height: 180,
                              width: 180,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-dutro-euro.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0),
          HeaderHinoView(),
          SizedBox(height: 0),
          ContentHinoView(),
        ],
      ),
    );
  }
}
