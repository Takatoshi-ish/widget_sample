import 'package:flutter/material.dart';

class SafeAreaSample extends StatelessWidget {
  const SafeAreaSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // left: false,
        maintainBottomViewPadding: true,
        child: ListView(
          children: List.generate(
            100,
            (i) => Text('This is text $i 行目'),
          ),
        ),
      ),
    );
  }
}
