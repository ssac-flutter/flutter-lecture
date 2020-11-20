import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/stream/counter.dart';

class StreamPage extends StatefulWidget {
  @override
  _StreamPageState createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {

  final _counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
      ),
      body: StreamBuilder<int>(
        stream: _counter.count,
        builder: (context, snapshot) {
          return Center(
            child: Text('${snapshot.data}', style: TextStyle(fontSize: 40),),
          );
        }
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _counter.increase();
              });
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_1),
            onPressed: () {
              setState(() {
                _counter.decrease();
              });
            },
          ),
        ],
      ),
    );
  }
}
