import 'package:flutter/material.dart';
import 'package:flutter_get_x/controllers/counter_controller.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Second Page' + '\nCount: ' + _counterController.count.string,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
