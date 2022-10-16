import 'package:flutter/material.dart';

class SliverGridSample extends StatefulWidget {
  const SliverGridSample({super.key});

  @override
  State<SliverGridSample> createState() => _SliverGridSampleState();
}

class _SliverGridSampleState extends State<SliverGridSample> {
  final String url =
      'https://images.unsplash.com/photo-1664840504239-991007ba2393?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzMjM4NDZ8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NjU4MTgyMzk&ixlib=rb-1.2.1&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: false,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SilverGrid Sample'),
            ),
          ),
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
                  child: Image(
                    image: NetworkImage(url),
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
              childCount: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: const Text('SliverToBoxAdapter',
                  style: TextStyle(fontSize: 24)),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
}
