import 'package:flutter/material.dart';

/* #1 SafeArea */
// import 'safeArea/safearea.dart';
import 'safeArea/maintainBottomViewPadding_check.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Flutter SafeArea Sample',
      home: const MainApp(),
      /* #1 SafeArea */
      // home: const SafeAreaSample(),
      // home: const MainApp(),
    );
  }
}
