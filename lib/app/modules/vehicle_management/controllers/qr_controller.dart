import 'package:get/get.dart';

class QrController extends GetxController {
  //TODO: Implement QrController

  RxBool mounted = false.obs;
  RxBool flashOn = false.obs;
  RxBool cameraRear = false.obs;


  void changeMounted() {
    mounted.toggle();
  }

  void changeFlashOn() {
    flashOn.toggle();
  }

  void changeCameraRear() {
    cameraRear.toggle();
  }


  @override
  void onClose() {}
}
