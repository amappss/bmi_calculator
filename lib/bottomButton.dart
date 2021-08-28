import 'package:flutter/material.dart';
import 'resources.dart';

class BottonButton extends StatelessWidget {
  final Function tap;
  final text;

  BottonButton({@required this.tap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        child: Center(
          child: Text(
            text,
            style: rButtenText,
          ),
        ),
        color: bottomColor,
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
