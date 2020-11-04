import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _height = 100;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _height = 200;
              });
            },
            child: Text('변환'),
          ),
          AnimatedContainer(
            curve: Curves.bounceIn,
            width: 200,
            height: 50,
            color: Colors.yellow,
            duration: Duration(milliseconds: 500),
          ),
        ],
      ),
    );
  }
}
