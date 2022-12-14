import 'package:flutter/material.dart';

class OpacitySample extends StatelessWidget {
  const OpacitySample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: const [
              CustomBox(text: 'No Opacity'),
              SizedBox(height: 15.0),
              Opacity(
                opacity: 1.0,
                child: CustomBox(text: 'Opacity'),
              ),
              SizedBox(height: 15.0),
              CustomBox(text: 'No Opacity'),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  const CustomBox({super.key, this.text = ''});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 200.0,
      width: 200.0,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
