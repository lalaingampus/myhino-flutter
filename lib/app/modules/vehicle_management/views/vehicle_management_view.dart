import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/modules/vehicle_management/views/option_input_view.dart';
import 'package:myhino/app/widgets/bottom_navigation.dart';

import '../controllers/vehicle_management_controller.dart';

class VehicleManagementView extends GetView<VehicleManagementController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Management"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed("home");
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    // Start::Search
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
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Semua',
                                      suffixIcon: Icon(
                                          Icons.arrow_drop_down_sharp,
                                          color: Colors.grey),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsets.all(15),
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 70,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                  child: TextField(
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Material(
                                    elevation: 4.0,
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(13.0),
                                      bottomRight: Radius.circular(13.0),
                                    ),
                                    child:
                                        Icon(Icons.search, color: Colors.black),
                                  ),
                                  hintText: 'Cari Nomor Plat / Kabin',
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(15),
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // End::Search
                    SizedBox(height: 20),
                    //Start:: Content
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 100,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                        "assets/mobile/images/icon-bus.png",
                                        height: 10,
                                        width: 20,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 100,
                                      width: 200,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 7),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: Text(
                                                "115 SDL STD - Euro4",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: Text(
                                                "1278127481274184718274",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 100,
                                      width: 60,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 50,
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: IconButton(
                                              onPressed: () {
                                                //action coe when button is pressed
                                              },
                                              icon: Icon(Icons.more_vert),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                        ],
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
                    //End:: Content
                    SizedBox(height: 40),
                    // Start:: Pagination
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 100,
                            width: 400,
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.grey[400],
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/mobile/images/ic-arrow-to-left.png'),
                                      scale: 0.75,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 55,
                                  width: 55,
                                  child: Icon(
                                    Icons.arrow_back_rounded,
                                    color: Colors.black,
                                    size: 26,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 55,
                                  width: 73,
                                  padding: EdgeInsets.fromLTRB(8, 15, 40, 0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 3,
                                      )),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 55,
                                  width: 47,
                                  padding: EdgeInsets.fromLTRB(2, 20, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Text(
                                    "/ 100",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 55,
                                  width: 55,
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 26,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/mobile/images/ic-arrow-to-right.png'),
                                      scale: 0.75,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // End:: Pagination
                    SizedBox(height: 40),
                    // Start::AddVehicle
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 70,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Get.to(OptionInputView());
                              },
                              icon: Icon(Icons.add,
                                  size: 16), //icon data for elevated button
                              label: Text(
                                "Add Vehicle",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ), //label text
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .black, //elevated btton background color
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    // End::AddVehicle
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
