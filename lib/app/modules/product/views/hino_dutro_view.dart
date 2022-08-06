import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HinoDutroView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HINO300 Dutro"),
        leading: IconButton(
          onPressed: () {},
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
    );
  }
}
