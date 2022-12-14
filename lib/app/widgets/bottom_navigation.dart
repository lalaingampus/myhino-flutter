import 'package:get/get.dart';
import './bottom_controller.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends GetView {
  final bottom_nav_controller = Get.put(BottomController());

  void _onTap(int index) {
    bottom_nav_controller.activeIndex.value = index;
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
      currentIndex: bottom_nav_controller.activeIndex.value,
      onTap: _onTap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home, ), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.handyman, ),
          label: 'Booking Service',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_bus,),
          label: 'Vehicle Mgmt',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.support_agent, ),
          label: 'Contact us',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined ),
          label: 'Account',
        ),
      ],
    );
  }
}
