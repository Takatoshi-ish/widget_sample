import 'package:flutter/material.dart';

class FlexibleSample extends StatelessWidget {
  const FlexibleSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible sample'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Flexible(
              child: Container(
                alignment: Alignment.center,
                width: 20,
                height: 50,
                color: Colors.red,
                child: const Text(
                  '1',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Flexible(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                color: Colors.blue,
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                color: Colors.green,
                child: const Text(
                  '3',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
