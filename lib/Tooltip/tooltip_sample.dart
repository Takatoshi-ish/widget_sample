import 'package:flutter/material.dart';

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: const Tooltip(
        message: 'I am a Tooltip',
        child: Text('Hover over the text to show a tooltip.'),
      ),
    );
  }
}
