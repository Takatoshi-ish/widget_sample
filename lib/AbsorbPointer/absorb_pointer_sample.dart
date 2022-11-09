import 'package:flutter/material.dart';

class AbsorbPointerSample extends StatelessWidget {
  const AbsorbPointerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
            ),
          ),
          SizedBox(
            width: 100.0,
            height: 200.0,
            child: AbsorbPointer(
              absorbing: false,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200,
                ),
                onPressed: () {},
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
