import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NewsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SemuaBeritaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SemuaBeritaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
