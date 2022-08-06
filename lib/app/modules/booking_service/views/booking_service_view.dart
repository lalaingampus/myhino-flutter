import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/modules/booking_service/views/input_booking_view.dart';

import '../controllers/booking_service_controller.dart';

class BookingServiceView extends GetView<BookingServiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Service"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
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
          color: Colors.grey[100],
          height: 600,
          child: Column(
            children: [
              SizedBox(height: 20),
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
                          suffixIcon: Icon(Icons.arrow_drop_down_sharp,
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
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                      hintText: 'Cari Nomor Plat / Kabin',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15),
                    ),
                  )),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 200,
                width: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                      color: Colors.white,
                      child: Image.asset("assets/mobile/images/icon-bus.png")),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 45,
                child: Text(
                  "No Booking service found. Try it now",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 35),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 70,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Input Booking
                    Get.to(InputBookingView());
                  },
                  icon:
                      Icon(Icons.add, size: 16), //icon data for elevated button
                  label: Text(
                    "Add Booking",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ), //label text
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, //elevated btton background color
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
