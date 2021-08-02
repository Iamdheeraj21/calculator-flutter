import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';

import './Widgets/cal_button.dart';

void main() {
  runApp(calApp());
}

// ignore: camel_case_types
class calApp extends StatefulWidget {
  calApp({Key? key}) : super(key: key);

  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<calApp> {
  String _history = "";
  String _expression = "";

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = "";
      _expression = "";
    });
  }

  void clear(String text) {
    setState(() {
      _expression = "";
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculator',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFF283637),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    _history,
                    style: TextStyle(fontSize: 24, color: Color(0xFFFFFFFF)),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  alignment: Alignment(1, 1),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    cal_button(
                      text: 'AC',
                      callback: allClear,
                      fillColor: 0xFF6C807F,
                    ),
                    cal_button(
                      text: 'C',
                      callback: clear,
                      fillColor: 0xFF6C807F,
                    ),
                    cal_button(
                      text: '%',
                      callback: numClick,
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF000000,
                    ),
                    cal_button(
                      text: '+',
                      callback: numClick,
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF000000,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    cal_button(
                      text: '1',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '2',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '3',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '-',
                      callback: numClick,
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF000000,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    cal_button(
                      text: '4',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '5',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '6',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      callback: numClick,
                      text: '*',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF000000,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    cal_button(
                      text: '7',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '8',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '9',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '/',
                      callback: numClick,
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF000000,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    cal_button(
                      text: '.',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '0',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '00',
                      callback: numClick,
                      fillColor: 0xFF283637,
                    ),
                    cal_button(
                      text: '=',
                      callback: evaluate,
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF000000,
                    )
                  ],
                )
              ],
            )));
  }
}
