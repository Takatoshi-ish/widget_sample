import 'package:flutter/material.dart';

class PositionedSample extends StatelessWidget {
  const PositionedSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.only(top: 50),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 50,
              left: 20,
              height: 250,
              width: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green[300],
                child: const Text(
                  '緑（一番下）',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 50,
              width: 250,
              height: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red[400],
                child: const Text(
                  '赤（真ん中）',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 210,
              left: 80,
              width: 250,
              height: 250,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.blue[300],
                child: const Text(
                  '青（一番上）',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
