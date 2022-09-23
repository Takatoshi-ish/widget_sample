import 'package:flutter/material.dart';

class OpacitySample extends StatefulWidget {
  const OpacitySample({super.key});

  @override
  State<OpacitySample> createState() => _OpacitySampleState();
}

class _OpacitySampleState extends State<OpacitySample> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 1),
          child: const FlutterLogo(
            size: 200.0,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _changeOpacity,
          child: const Icon(Icons.refresh),
        )
      ],
    );
  }
}
