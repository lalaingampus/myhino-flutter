import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AccountController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement AccountController
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Personal'),
    Tab(text: 'Vehicle'),
  ];

  TabController? controller;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    controller?.dispose();
    super.onClose();
  }
}
