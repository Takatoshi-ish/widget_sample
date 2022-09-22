import 'package:flutter/material.dart';

class AnimatedContainerSample extends StatefulWidget {
  const AnimatedContainerSample({super.key});

  @override
  State<AnimatedContainerSample> createState() =>
      _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
  Color _color = Colors.blue;

  void _onTap() => setState(() => _color = Colors.red);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: AnimatedContainer(
        color: _color,
        duration: const Duration(seconds: 1),
        width: 100,
        height: 100,
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
