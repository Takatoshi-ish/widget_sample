import 'package:flutter/material.dart';

class Transform3D extends StatelessWidget {
  const Transform3D({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Container(
      color: Colors.white,
      child: Center(
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.01)
            ..rotateX(0.6),
          alignment: FractionalOffset.center,
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
