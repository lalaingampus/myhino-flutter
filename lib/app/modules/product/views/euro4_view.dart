import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/widgets/paginations.dart';
import 'package:myhino/app/widgets/search.dart';
import 'package:myhino/app/widgets/reset_filter.dart';

class Euro4View extends GetView {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 750,
        width: 411,
        color: Colors.grey[200],
        child: Column(
          children: [
            SizedBox(height: 10),
            Search(onTap: () {}, width: 345),
            SizedBox(height: 10),
            //Start::Content
            Container(
              child: Column(
                children: [
                  Container(
                    height: 540,
                    width: 411,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Filter
                                ResetFilter(
                                    onTap: () {}, height: 40, width: 100),
                                SizedBox(width: 20),
                                GestureDetector(
                                  onTap: () {},
                                  child: ResetFilter(
                                      onTap: () {}, height: 30, width: 90),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Play Video Training
                              },
                              child: Container(
                                height: 230,
                                width: 190,
                                child: Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
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
                                            '10 March 2022',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
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
                                //Play Video Training
                              },
                              child: Container(
                                height: 230,
                                width: 190,
                                child: Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
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
                                            '10 March 2022',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
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
                                //Play VideoTraining
                              },
                              child: Container(
                                height: 230,
                                width: 190,
                                child: Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
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
                                            '10 March 2022',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
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
                                //PlayVideoTraining()
                              },
                              child: Container(
                                height: 230,
                                width: 190,
                                child: Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
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
                                            '10 March 2022',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
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

            //End::Content
            SizedBox(height: 5),
            PaggingButton({1, 100}),
          ],
        ),
      ),
    );
  }
}
