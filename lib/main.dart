import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter SafeArea Sample',
      home: SafeAreaSample(),
    );
  }
}

class SafeAreaSample extends StatelessWidget {
  const SafeAreaSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(100, (i) => Text('This is text $i 行目')),
      ),
    );
  }
}
