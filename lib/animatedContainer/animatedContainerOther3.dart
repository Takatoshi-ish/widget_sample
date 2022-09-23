import 'package:flutter/material.dart';

class AnimatedContainerSample extends StatefulWidget {
  const AnimatedContainerSample({super.key});

  @override
  State<AnimatedContainerSample> createState() =>
      _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
  bool selected = false;
  double size = 2;

  void _onTap() {
    if (!selected) {
      size = 3;
      selected = true;
    } else {
      size = 2;
      selected = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AnimatedContainer(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          color: Colors.blue,
          duration: const Duration(seconds: 2),
          transform: Matrix4.diagonal3Values(size, size, 1),
          child: const FlutterLogo(size: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
