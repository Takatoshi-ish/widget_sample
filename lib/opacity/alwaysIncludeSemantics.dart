import 'package:flutter/material.dart';

class OpacitySample extends StatelessWidget {
  const OpacitySample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Opacity(
                  opacity: 0.0,
                  alwaysIncludeSemantics: false,
                  child: Semantics(
                    onTap: () {
                      print("Opacity ボックス");
                    },
                    label: 'alwaysIncludeSemantics true',
                    child: Container(
                      padding: const EdgeInsets.all(100),
                      child: const Text('Hello Word'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
