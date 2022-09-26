import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../driver_training_view.dart';
import '../mekanik_training_view.dart';

class ContentView extends GetView {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 320,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                //DriverTraining
                Get.to(DriverTrainingView());
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                height: 150,
                width: 390,
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 380,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/mobile/images/bg_hino.png"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.red[900],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/mobile/images/ic_driver_htc.png",
                                scale: 1,
                              ),
                              SizedBox(width: 20),
                              Container(
                                height: 50,
                                width: 260,
                                padding: EdgeInsets.fromLTRB(70, 10, 0, 0),
                                child: Text(
                                  "DRIVER",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 28),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                //MekanikTraining
                Get.to(MekanikTrainingView());
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                height: 140,
                width: 390,
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 380,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/mobile/images/bg_mekanik.png"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.red[900],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/mobile/images/ic_mekanik_htc.png",
                                scale: 1,
                              ),
                              SizedBox(width: 20),
                              Container(
                                height: 50,
                                width: 260,
                                padding: EdgeInsets.fromLTRB(60, 10, 0, 0),
                                child: Text(
                                  "MEKANIK",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 28),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(height: 1, width: 370, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
