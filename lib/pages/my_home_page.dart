import 'package:flutter/material.dart';
import 'package:flutter_get_x/controllers/counter_controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }

  Widget get body => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          countDisplay,
          increaseButton,
          decreaseButton,
        ],
      );

  Widget get countDisplay => Align(
        alignment: Alignment.center,
        child: Obx(() => Text('Count: ' + counterController.count.string)),
      );

  Widget get increaseButton => RaisedButton(
        onPressed: counterController.increment,
        child: Text('Increase'),
      );

  Widget get decreaseButton => RaisedButton(
        onPressed: counterController.decrement,
        child: Text('Decrease'),
      );
}
