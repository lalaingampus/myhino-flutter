import 'package:flutter/material.dart';
import 'package:qr_code_scanner/src/qr_code_scanner.dart';
import 'package:qr_code_scanner/src/qr_scanner_overlay_shape.dart';
import '../controllers/qr_controller.dart';
import 'package:get/get.dart';

class ScannerView extends GetView {
  final qr_controller = Get.find<QrController>();

  GlobalKey _qrKey = GlobalKey();
  late QRViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scanner"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed("vehicle-management");
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          QRView(
            key: _qrKey,
            overlay: QrScannerOverlayShape(),
            onQRViewCreated: (QRViewController controller) {
              this._controller = controller;
              controller.scannedDataStream.listen((val) {
                if (qr_controller.mounted.value) {
                  _controller.dispose();
                  Navigator.pop(context, val);
                }
              });
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Scanner',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  color: Colors.white,
                  icon: Icon(qr_controller.flashOn.value
                      ? Icons.flash_on
                      : Icons.flash_off),
                  onPressed: () {
                    qr_controller.changeFlashOn();
                    _controller.toggleFlash();
                  },
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(qr_controller.cameraRear.value
                      ? Icons.camera_front
                      : Icons.camera_rear),
                  onPressed: () {
                    qr_controller.changeCameraRear();
                    _controller.flipCamera();
                  },
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
