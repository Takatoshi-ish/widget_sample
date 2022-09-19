import 'package:flutter/material.dart';

class WrapSample extends StatelessWidget {
  const WrapSample({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.25;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Wrap(
          direction: Axis.vertical,
          // runAlignment: WrapAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: width,
              height: width,
              color: Colors.blue,
            ),
            Container(
              width: width,
              height: width,
              color: Colors.green,
            ),
            Container(
              width: width,
              height: width,
              color: Colors.red,
            ),
            Container(
              width: width,
              height: width,
              color: Colors.orange,
            ),
            Container(
              width: width,
              height: width,
              color: Colors.yellow,
            ),
            Container(
              width: width,
              height: width,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
