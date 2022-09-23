import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacitySample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomRow(),
            SizedBox(height: 10.0),
            Opacity(
              child: CustomRow(),
              opacity: 1.0,
            ),
            SizedBox(height: 10.0),
            CustomRow(),
          ],
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  CustomRow(
      {this.textColor = Colors.white,
      this.backgroundColor = Colors.indigo,
      this.text = 'sample'});
  final Color textColor;
  final Color backgroundColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: 100.0,
      width: 200.0,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
