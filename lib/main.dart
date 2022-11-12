import 'package:flutter/material.dart';

import 'Transform/transform_rotate.dart';
import 'Transform/transform_sample.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // theme: ThemeData(
      //     colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      title: 'Flutter Expanded Sample',
      home: TransformRotate(),
    );
  }
}
