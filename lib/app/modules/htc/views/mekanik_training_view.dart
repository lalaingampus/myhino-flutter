import 'package:flutter/material.dart';
import 'package:myhino/app/widgets/slider_htc.dart';
import 'package:myhino/app/widgets/search.dart';
import 'package:myhino/app/widgets/paginations.dart';
import 'package:myhino/app/widgets/button.dart';
import 'package:get/get.dart';

class MekanikTrainingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HINO Training Centre (HTC)"),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 1200,
          width: 411,
          color: Colors.grey[200],
          child: Column(
            children: [
              SliderHTCView(),
              // Start::detail Component
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 460,
                      width: 411,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //PlayVideoTraining
                                },

                                child: Container(
                                  height: 210,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                            height: 130,
                                            width: 200,
                                            color: Colors.black,
                                            child: Image.asset(
                                              "assets/mobile/images/header-article.png",
                                              scale: 1.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                bottom: 0,
                                                right: 0,
                                                top: 0),
                                            //apply padding to some sides only
                                            child: Text(
                                              'Driver 300 Proper Driving Sebelum Menghidupkan Mesin',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  //DetailVideoTraining()
                                },
                                child: Container(
                                  height: 210,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                            height: 130,
                                            width: 200,
                                            color: Colors.black,
                                            child: Image.asset(
                                              "assets/mobile/images/header-article.png",
                                              scale: 1.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                bottom: 0,
                                                right: 0,
                                                top: 0),
                                            //apply padding to some sides only
                                            child: Text(
                                              'Driver 300 Proper Driving Sebelum Menghidupkan Mesin',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //DetailVideoTraining
                                },
                                child: Container(
                                  height: 210,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                            height: 130,
                                            width: 200,
                                            color: Colors.black,
                                            child: Image.asset(
                                              "assets/mobile/images/header-article.png",
                                              scale: 1.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                bottom: 0,
                                                right: 0,
                                                top: 0),
                                            //apply padding to some sides only
                                            child: Text(
                                              'Driver 300 Proper Driving Sebelum Menghidupkan Mesin',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  //DetailVideoTraining()
                                },
                                child: Container(
                                  height: 210,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                            height: 130,
                                            width: 200,
                                            color: Colors.black,
                                            child: Image.asset(
                                              "assets/mobile/images/header-article.png",
                                              scale: 1.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                bottom: 0,
                                                right: 0,
                                                top: 0),
                                            //apply padding to some sides only
                                            child: Text(
                                              'Driver 300 Proper Driving Sebelum Menghidupkan Mesin',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
              // End:: detail COmponent
              Search(onTap: () {}, width: 345),
              SizedBox(height: 10),

              SizedBox(height: 10),
              PaggingButton(currentPage: 1, totalPage: 20),
              Button(onTap: () {}, height: 60, width: 400, title: 'HTC'),
            ],
          ),
        ),
      ),
    );
  }
}
