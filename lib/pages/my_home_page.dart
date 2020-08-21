import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
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
        child: Text('Count: '), // TODO: display count
      );

  Widget get increaseButton => RaisedButton(
        onPressed: () {
          // TODO: increase count
        },
        child: Text('Increase'),
      );

  Widget get decreaseButton => RaisedButton(
        onPressed: () {
          // TODO: decrease count
        },
        child: Text('Decrease'),
      );
}
