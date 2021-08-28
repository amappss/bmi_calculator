import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'resources.dart';
import 'bottomButton.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(15),
                child: Text(
                  'Your Result',
                  style: rBoldTextStyle,
                  textAlign: TextAlign.left,
                ),
              )),
          Expanded(
              flex: 5,
              child: ReusableContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Result',
                      style: TextStyle(
                          color: Color(0xFF24D876),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      '20.2',
                      style: rBoldTextStyle.copyWith(fontSize: 70),
                    ),
                    Text(
                      'your result is gonna be here',
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
                color: activeColor,
              )),
          Expanded(
              flex: 1,
              child: BottonButton(
                tap: () {
                  Navigator.pop(context);
                },
                text: 'GO BACK',
              )),
        ],
      ),
    );
  }
}
