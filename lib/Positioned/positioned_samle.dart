import 'package:flutter/material.dart';

class PositionedSample extends StatelessWidget {
  const PositionedSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 30,
              height: 250,
              width: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green[300],
                child: const Text(
                  'Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 60,
              width: 250,
              height: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red[400],
                child: const Text(
                  'Red',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 90,
              width: 250,
              height: 250,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.purple[300],
                child: const Text(
                  'Purple',
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
