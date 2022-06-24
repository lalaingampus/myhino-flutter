import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/booking_service_controller.dart';

class BookingServiceView extends GetView<BookingServiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BookingServiceView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BookingServiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
