import 'package:flutter/material.dart';

class FadeInImageSample extends StatefulWidget {
  const FadeInImageSample({super.key});

  @override
  State<FadeInImageSample> createState() => _FadeInImageSampleState();
}

class _FadeInImageSampleState extends State<FadeInImageSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeInImage Sample'),
      ),
      body: SafeArea(
        child: Center(
          child: FadeInImage.assetNetwork(
            height: 300,
            width: 300,
            fadeInCurve: Curves.bounceIn,
            fadeInDuration: Duration(milliseconds: 1000),
            fadeOutCurve: Curves.easeOutCubic,
            fadeOutDuration: Duration(milliseconds: 1000),
            placeholder: 'images/waiting.png',
            image:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/440px-Google-flutter-logo.svg.png',
          ),
        ),
      ),
    );
  }
}
