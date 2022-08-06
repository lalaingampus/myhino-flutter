import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends GetView {
  void _onTap(int index) {
    Get.snackbar("index", index.toString());
    if (index == 0) {
      Get.toNamed('home');
    } else if (index == 1) {
      Get.toNamed('booking-service');
    } else if (index == 2) {
      Get.toNamed('vehicle-management');
    } else if (index == 3) {
      Get.toNamed('contact-us');
    } else if (index == 4) {
      Get.toNamed('account');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      onTap: _onTap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.handyman, color: Colors.red),
          label: 'Booking Service',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_bus, color: Colors.red),
          label: 'Vehicle Mgmt',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.support_agent, color: Colors.red),
          label: 'Contact us',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined, color: Colors.red),
          label: 'Account',
        ),
      ],
    );
  }
}
