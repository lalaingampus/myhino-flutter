import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'contentHino.dart';
import 'headerHino.dart';
import 'headerNewHino.dart';
import 'content.dart';


class ProdukPage extends StatefulWidget {
  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed("home");
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 30),
            HeaderSection(),
            SizedBox(height: 0),
            ContentSection(),
            SizedBox(height: 0),
            HeaderHinoSection(),
            SizedBox(height: 0),
            ContentHinoSection(),
          ],
        ),
      ),
    );
    );
  }
}
