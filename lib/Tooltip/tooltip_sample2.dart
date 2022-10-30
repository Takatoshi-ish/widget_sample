import 'package:flutter/material.dart';

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Tooltip(
        message: 'I am a Tooltip',
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient:
              const LinearGradient(colors: <Color>[Colors.amber, Colors.red]),
        ),
        height: 100,
        padding: const EdgeInsets.all(8.0),
        preferBelow: false,
        textStyle: const TextStyle(
          fontSize: 24,
        ),
        showDuration: const Duration(seconds: 10),
        waitDuration: const Duration(seconds: 10),
        child: const Text('Tap this text and hold down to show a tooltip.'),
      ),
    );
  }
}
