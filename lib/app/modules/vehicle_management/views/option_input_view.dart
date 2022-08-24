import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/modules/vehicle_management/views/scanner_view.dart';
import './manual_books_view.dart';

class OptionInputView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Management Input"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed("vehicle-management");
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 600,
                width: 410,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    //Start:: Option
                    Container(
                      height: 260,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(ScannerView());
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              height: 220,
                              width: 190,
                              child: Column(
                                children: [
                                  Container(
                                    height: 180,
                                    width: 170,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(14),
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset(
                                          "assets/mobile/images/scanner_qr.png",
                                          scale: 0.6,
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
                                          'QR Code Scanner',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
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
                              Get.to(ManualBooksView());
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              height: 220,
                              width: 190,
                              child: Column(
                                children: [
                                  Container(
                                    height: 180,
                                    width: 170,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset(
                                          "assets/mobile/images/manual_entry.png",
                                          scale: 0.6,
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
                                          'Manual Entry',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
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
                    //End:: Option
                    SizedBox(height: 25),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: Text(
                          "Scan QR atau input manual 17 digit nomor rangka kendaraan anda",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
