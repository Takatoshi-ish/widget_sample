import 'package:flutter/material.dart';

class SliverListAndSliverGridSample extends StatefulWidget {
  const SliverListAndSliverGridSample({super.key});

  @override
  State<SliverListAndSliverGridSample> createState() =>
      _SliverListAndSliverGridSampleState();
}

class _SliverListAndSliverGridSampleState
    extends State<SliverListAndSliverGridSample> {
  @override
  Widget build(BuildContext context) {
    final gridListItem = [
      Container(color: Colors.red, height: 150.0),
      Container(color: Colors.purple, height: 150.0),
      Container(color: Colors.green, height: 150.0),
      Container(color: Colors.orange, height: 150.0),
      Container(color: Colors.yellow, height: 150.0),
      Container(color: Colors.pink, height: 150.0),
      Container(color: Colors.cyan, height: 150.0),
      Container(color: Colors.indigo, height: 150.0),
      Container(color: Colors.blue, height: 150.0),
    ];

    final listItem = [
      Container(color: Colors.red),
      Container(color: Colors.purple),
      Container(color: Colors.green),
      Container(color: Colors.orange),
      Container(color: Colors.yellow),
    ];

    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          children: gridListItem,
        ),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(listItem),
        ),
      ],
    );
  }
}
