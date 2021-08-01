import 'package:flutter/material.dart';
import './Widgets/cal_button.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculator',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFF283637),
          body: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              cal_button(
                text: 'AC',
                fillColor: 0xFF6C807F,
              ),
              cal_button(
                text: 'C',
                fillColor: 0xFF6C807F,
              ),
              cal_button(
                text: '%',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF000000,
              ),
              cal_button(
                text: '/',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF000000,
              )
            ],
          )),
        ));
  }
}
