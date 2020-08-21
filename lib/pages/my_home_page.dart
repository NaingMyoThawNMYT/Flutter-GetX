import 'package:flutter/material.dart';
import 'package:flutter_get_x/controllers/counter_controller.dart';
import 'package:flutter_get_x/pages/second_page.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  final _counterController = Get.put(CounterController());

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
          goToSecondPageButton,
        ],
      );

  Widget get countDisplay => Align(
        alignment: Alignment.center,
        child: Obx(() => Text('Count: ' + _counterController.count.string)),
      );

  Widget get increaseButton => RaisedButton(
        onPressed: _counterController.increment,
        child: Text('Increase'),
      );

  Widget get decreaseButton => RaisedButton(
        onPressed: _counterController.decrement,
        child: Text('Decrease'),
      );

  Widget get goToSecondPageButton => RaisedButton(
        onPressed: () => Get.to(SecondPage()),
        child: Text('Go to Second Page'),
      );
}
