import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AccountController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement AccountController
  late TabController tabController =
      TabController(vsync: this, length: 2, initialIndex: 0);

  final count = 0.obs;


}
