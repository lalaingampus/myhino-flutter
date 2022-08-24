import 'package:flutter/material.dart';
import 'package:myhino/app/modules/htc/views/video_training_view.dart';
import 'package:get/get.dart';

class InfoView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 40,
                        width: 100,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Filter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 10),
                              fixedSize: const Size(240, 80),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        )),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 90,
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "Reset Filter",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 20),
          Container(
            height: 720,
            width: 411,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //DetailVideoTraining
                        Get.to(VideoTrainingView());
                      },
                      child: Container(
                        height: 350,
                        width: 180,
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-profia.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'OUTPUT SHAFT ASSY',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  height: 25,
                                  width: 80,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Sparepart',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[100],
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        fixedSize: const Size(240, 80),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                  )),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'ZU8883429',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'Rp 26.576.000',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        //DetailVideoTraining
                        Get.to(VideoTrainingView());
                      },
                      child: Container(
                        height: 350,
                        width: 180,
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-profia.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'OUTPUT SHAFT ASSY',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  height: 25,
                                  width: 80,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Sparepart',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[100],
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        fixedSize: const Size(240, 80),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                  )),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'ZU8883429',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'Rp 26.576.000',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                )),
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
                        //DetailVideoTraining()
                        Get.to(VideoTrainingView());
                      },
                      child: Container(
                        height: 350,
                        width: 180,
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-profia.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'OUTPUT SHAFT ASSY',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  height: 25,
                                  width: 80,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Sparepart',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[100],
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        fixedSize: const Size(240, 80),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                  )),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'ZU8883429',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'Rp 26.576.000',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        //DetailVideoTraining()
                        Get.to(VideoTrainingView());
                      },
                      child: Container(
                        height: 350,
                        width: 180,
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Image.asset(
                                    "assets/mobile/images/pc-profia.png",
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'OUTPUT SHAFT ASSY',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  height: 25,
                                  width: 80,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Sparepart',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[100],
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        fixedSize: const Size(240, 80),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                  )),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'ZU8883429',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 0, right: 0, top: 0),
                                    //apply padding to some sides only
                                    child: Text(
                                      'Rp 26.576.000',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                )),
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
    );
  }
}
