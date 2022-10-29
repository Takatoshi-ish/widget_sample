import 'package:flutter/material.dart';

class CustomPaintSample extends StatefulWidget {
  const CustomPaintSample({super.key});

  @override
  State<StatefulWidget> createState() {
    return CustomPaintSampleState();
  }
}

class CustomPaintSampleState extends State<CustomPaintSample>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween(begin: 10.0, end: 100.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaint Sample'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Opacity(
              opacity: _animationController.isAnimating ? 1.0 : 0.00,
              child: CustomPaint(
                size: const Size(0, 200),
                foregroundPainter: _CirclePainter(_animation.value),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, //ボタンの背景色
                ),
                onPressed: () {
                  if (_animationController.isAnimating) {
                    _animationController.reset();
                  } else {
                    _animationController.repeat();
                  }
                },
                child: const Text(
                  '起動/停止',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CirclePainter extends CustomPainter {
  double radius;

  _CirclePainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    var c = const Offset(0, 200.0);
    var paint = Paint()
      ..isAntiAlias = true
      ..color = Colors.blue
      ..strokeWidth = 5.0;
    canvas.drawCircle(
      c,
      radius,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
