import 'package:flutter/material.dart';
import 'package:myhino/app/modules/htc/views/video_training_view.dart';
import 'package:myhino/app/widgets/slider_htc.dart';
import 'package:myhino/app/widgets/button.dart';
import 'package:get/get.dart';

class DriverTrainingView extends GetView {
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
        height: 860,
        width: 411,
        color: Colors.grey[200],
        child: Column(
          children: [
            SliderHTCView(),
            //Start::Content
            Container(
              height: 275,
              width: 400,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 15,
                            bottom: 0,
                            right: 15,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          'Training Mandiri Driver',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                    height: 220,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 100,
                                  padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(
                                          "assets/mobile/images/ic_driver_htc.png",
                                          color: Colors.grey,
                                          height: 10,
                                          width: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 80,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 0, 0),
                                          child: Text(
                                            "Program pelatihan pengemudi untuk membantu kelancaran transportasi yang aman",
                                            style: TextStyle(
                                              fontSize: 16,
                                              height: 1.4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 360,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Text(
                                            "dan ekonomis melalui pengemudi yang handal dan tertib berlalu lintas, HTSCC (Hino Total Support Customer Center) Fasilitas ini dapat digunakan customer setia Hino untuk terus meningkatkan keterampilan berkendara para pengemudinya",
                                            style: TextStyle(
                                              fontSize: 16,
                                              height: 1.4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //ENd:: Content
            // start:: Option
            Container(
              height: 160,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //VideoTraining()
                      Get.to(VideoTrainingView());
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                color: Colors.red,
                                child: Image.asset(
                                  "assets/mobile/images/ic_vidio2.png",
                                  scale: 1.2,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 0, bottom: 0, right: 0, top: 5),
                                //apply padding to some sides only
                                child: Text(
                                  'Materi Belajar Mandiri',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      //DaftarTrainingHSTCC()

                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                color: Colors.red,
                                child: Image.asset(
                                  "assets/mobile/images/ic_daftar2.png",
                                  scale: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 0, bottom: 0, right: 0, top: 5),
                                //apply padding to some sides only
                                child: Text(
                                  'Daftar Ke HSTCC',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
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
            ),
            //End::Option
            SizedBox(height: 20),
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
      )
    );

  }
}
