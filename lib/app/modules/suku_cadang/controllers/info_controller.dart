import 'package:get/get.dart';

class InfoController extends GetxController {
  //TODO: Implement InfoController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
