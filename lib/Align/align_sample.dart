import 'package:flutter/material.dart';

class AlignSample extends StatelessWidget {
  const AlignSample({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          color: Colors.blue[50],
          child: const Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 80,
            ),
          ),
        ),
      ),
    );
  }
}
