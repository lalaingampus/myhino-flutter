import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:shadow_mobile/mobile/components/home/components/menu/pages/produk/component/body.dart';
import 'package:shadow_mobile/mobile/components/home/home.dart';
import 'package:shadow_mobile/mobile/page/booking-service/booking_service.dart';

class BeritaEuroPage extends StatefulWidget {
  @override
  State<BeritaEuroPage> createState() => _BeritaEuroPageState();
}

class _BeritaEuroPageState extends State<BeritaEuroPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Euro4"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt, color: Colors.grey[400]),
            onPressed: () {},
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
