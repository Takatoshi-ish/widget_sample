import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final bottomOffset = mq.viewInsets.bottom + mq.padding.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('')),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.only(bottom: bottomOffset),
        child: SafeArea(
          bottom: true,
          maintainBottomViewPadding: true, // ここの値を切り替える
          child: Stack(children: const [
            Align(
              alignment: Alignment.bottomLeft,
              child: TextContainer(),
            ),
          ]),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 147, 247, 105),
    );
  }
}

class TextContainer extends StatefulWidget {
  const TextContainer({super.key});

  @override
  TextContainerState createState() => TextContainerState();
}

class TextContainerState extends State<TextContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: const [
          SizedBox(
            width: 60,
            child: Text('入力欄'),
          ),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'ここに入力してください!',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
