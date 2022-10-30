import 'package:flutter/material.dart';

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: const Tooltip(
        richMessage: TextSpan(
          text: 'I am a rich tooltip. ',
          style: TextStyle(color: Colors.red),
          children: <InlineSpan>[
            TextSpan(
              text: 'I am another span of this rich tooltip',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        child: Text('Tap this text and hold down to show a tooltip.'),
      ),
    );
  }
}
