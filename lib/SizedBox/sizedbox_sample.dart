import 'package:flutter/material.dart';

class SizedBoxSample extends StatelessWidget {
  const SizedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 300,
          child: Card(
            color: Colors.red,
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
