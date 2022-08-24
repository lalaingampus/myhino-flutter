import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DealerView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DealerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DealerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
