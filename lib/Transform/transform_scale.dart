import 'package:flutter/material.dart';

class TransformScale extends StatelessWidget {
  const TransformScale({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Container(
      color: Colors.white,
      child: Center(
        child: Transform.scale(
          scale: 3.0,
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
