import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  var currentStep = 0.obs;
  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
