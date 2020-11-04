import 'package:flutter/material.dart';

// stless, stful

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // 상태들
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카운터'),
      ),
      body: Center(
        child: Text('$count', style: TextStyle(fontSize: 80)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면을 다시 그리기
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
