import 'package:flutter/material.dart';

import 'Hero/hero_sample.dart';
import 'InheritedModel/inherited_explain.dart';
// import 'InheritedModel/inherited_model_sample.dart';

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
      home: HeroSample(), //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
