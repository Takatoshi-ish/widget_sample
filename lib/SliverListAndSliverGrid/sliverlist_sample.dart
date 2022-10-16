import 'package:flutter/material.dart';

class SliverListSample extends StatefulWidget {
  const SliverListSample({super.key});

  @override
  State<SliverListSample> createState() => _SliverListSampleState();
}

class _SliverListSampleState extends State<SliverListSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.green,
            title: Text('SilverList Sample'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.all(15),
                  child: Container(
                    color: Colors.orange[100 * (index % 12 + 1)],
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "List Item $index",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
