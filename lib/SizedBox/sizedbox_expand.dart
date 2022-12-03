import 'package:flutter/material.dart';

class SizedBoxSample extends StatelessWidget {
  const SizedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Card(
              color: Colors.red,
              child: Text('Card 1'),
            ),
            Card(
              color: Colors.red,
              child: Text('Card 2'),
            ),
            SizedBox.expand(
              child: Card(
                color: Colors.red,
                child: Text('Hello World!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
