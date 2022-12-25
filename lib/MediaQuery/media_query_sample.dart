import 'package:flutter/material.dart';

class MediaQuerySample extends StatefulWidget {
  const MediaQuerySample({super.key});

  @override
  State<MediaQuerySample> createState() => _MediaQuerySampleState();
}

class _MediaQuerySampleState extends State<MediaQuerySample> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Sample'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('size : $size'),
              Text('orientation : $orientation'),
              Text('textScaleFactor : $textScaleFactor'),
            ],
          ),
        ),
      ),
    );
  }
}
