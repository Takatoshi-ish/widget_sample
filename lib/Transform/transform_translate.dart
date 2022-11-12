import 'package:flutter/material.dart';

class TransformTranslate extends StatelessWidget {
  const TransformTranslate({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Container(
      color: Colors.white,
      child: Center(
        child: Transform.translate(
          offset: Offset(50, 50),
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
