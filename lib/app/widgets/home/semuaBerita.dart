import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SemuaBeritaPage extends StatefulWidget {
  @override
  State<SemuaBeritaPage> createState() => _SemuaBeritaPageState();
}

class _SemuaBeritaPageState extends State<SemuaBeritaPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dealer"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('booking-service');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {},
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
