import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ManualBooksView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Management"),
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
                    SizedBox(height: 110),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: Text(
                          "Input 17 digit nomor rangka anda pada field berikut :",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 45),
                    //Start::SearchManual
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 70,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                color: Colors.grey[200],
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Input Nomor Rangka',
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //End::SearchManual
                    SizedBox(height: 20),
                    //Start::Submit
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 70,
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                fixedSize: const Size(240, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //End:: Submit
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
