import 'package:flutter/material.dart';

class DismissibleSample extends StatefulWidget {
  const DismissibleSample({super.key});

  @override
  State<DismissibleSample> createState() => _DismissibleSampleState();
}

class _DismissibleSampleState extends State<DismissibleSample> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            background: Container(
              color: Colors.green,
            ),
            direction: DismissDirection.vertical,
            key: ValueKey<int>(items[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(
                'Item ${items[index]}',
              ),
            ),
          );
        },
      ),
    );
  }
}
