import 'package:flutter/material.dart';

// import 'FloatingActionButton/fab_sample1.dart';
// import 'FloatingActionButton/fab_sample2.dart';
import 'FloatingActionButton/fab_sample3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      title: 'Flutter Expanded Sample',
      home: FabExample(),
    );
  }
}
