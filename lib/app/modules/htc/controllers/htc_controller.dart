import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HtcController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HtcController

  late TabController tabController =
      TabController(vsync: this, length: 3, initialIndex: 0);


  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

}
