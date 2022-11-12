import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformRotate extends StatelessWidget {
  const TransformRotate({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Container(
      color: Colors.white,
      child: Center(
        child: Transform.rotate(
          angle: math.pi / 4,
          child: const Padding(
            padding: EdgeInsets.all(30),
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
