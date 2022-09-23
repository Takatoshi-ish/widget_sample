import 'package:flutter/material.dart';

class AnimatedContainerSample extends StatefulWidget {
  const AnimatedContainerSample({super.key});

  @override
  State<AnimatedContainerSample> createState() =>
      _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
  bool selected = false;
  double _radians = 0;

  void _onTap() {
    if (!selected) {
      _radians = 45;
      selected = true;
    } else {
      _radians = 0;
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
          duration: const Duration(seconds: 1),
          transform: Matrix4.rotationZ(_radians),
          child: const FlutterLogo(size: 75),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
