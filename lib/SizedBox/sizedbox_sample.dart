import 'package:flutter/material.dart';

class SizedBoxSample extends StatelessWidget {
  const SizedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            color: Colors.red,
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
