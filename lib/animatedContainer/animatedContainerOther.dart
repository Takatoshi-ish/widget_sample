import 'package:flutter/material.dart';

class AnimatedContainerSample extends StatefulWidget {
  const AnimatedContainerSample({super.key});

  @override
  State<AnimatedContainerSample> createState() =>
      _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
  bool selected = false;
  double _position = 0;

  void _onTap() {
    if (!selected) {
      _position = 300;
    } else {
      _position = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: AnimatedContainer(
          width: 100,
          height: 100,
          color: Colors.blue,
          duration: const Duration(seconds: 2),
          transform: Matrix4.translationValues(_position, _position, 0)),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
