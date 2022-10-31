import 'package:flutter/material.dart';

class FittedBoxSample extends StatelessWidget {
  const FittedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      ),
    );
  }
}
