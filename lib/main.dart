import 'package:flutter/material.dart';

import 'opacity/opacity.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Flutter Expanded Sample',
      home: OpacitySample(),
    );
  }
}
