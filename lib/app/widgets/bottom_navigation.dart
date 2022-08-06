import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends GetView {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
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
      )
    );
  }
}
