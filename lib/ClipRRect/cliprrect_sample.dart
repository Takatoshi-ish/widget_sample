import 'package:flutter/material.dart';

class ClipRRectApp extends StatelessWidget {
  const ClipRRectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ClipRRect Sample')),
        body: const ClipRRectExample(),
      ),
    );
  }
}

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // ClipRRect なし
          Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 100,
            ),
            color: Colors.blue,
            child: const Text('No ClipRRect', style: style),
          ),
          // ClipRRect あり　（上下左右に丸みをつける）
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.green,
              child: const Text('ClipRRect', style: style),
            ),
          ),
          // ClipRRect あり　（下半分にのみ丸みをつける）
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(40.0),
            ),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.purple,
              child: const Text('ClipRRect', style: style),
            ),
          ),
        ],
      ),
    );
  }
}
