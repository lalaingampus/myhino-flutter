import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MenuView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 170,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('product');
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-truck.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Produk',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('komparasi');
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-double-arrow.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Komparasi Produk',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('suku-cadang');
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-gear.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Suku Cadang',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('dealer');
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-dealer.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Jaringan Dealer',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('htc');
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-present.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Hino Training Center (HTC)',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("telemarics");
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-union.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Telematics',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("kredit");
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-calc.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Simulasi Kredit',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("about");
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 130,
                                width: 90,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          color: Colors.grey[200],
                                          child: Image.asset(
                                            "assets/mobile/images/icon-g-hino.png",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                        child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0,
                                            bottom: 0,
                                            right: 0,
                                            top: 5),
                                        //apply padding to some sides only
                                        child: Text(
                                          'Hino Indonesia',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
