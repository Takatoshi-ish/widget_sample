import 'package:flutter/material.dart';

class TransformSkew extends StatelessWidget {
  const TransformSkew({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Container(
      color: Colors.white,
      child: Center(
        child: Transform(
          transform: Matrix4.skewX(0.3),
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
