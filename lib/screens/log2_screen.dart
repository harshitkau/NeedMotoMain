import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/LogController.dart';

class Log2screen extends StatelessWidget {
  final logController = Get.put(LogController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'log Screen',
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: logController.productData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Text('on tap'),
            );
          }),
    );
  }
}
