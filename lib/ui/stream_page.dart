import 'package:flutter/material.dart';
import 'package:flutter_app/stream/counter.dart';

class StreamPage extends StatelessWidget {
  final _counter = Counter();

  final upCounter = Stream<int>
      .periodic(Duration(seconds: 1), (value) => value)
      .take(11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
      ),
      body: Column(
        children: [
          StreamBuilder<int>(
              stream: _counter.count,
              builder: (context, snapshot) {
                return Center(
                  child: Text(
                    '${snapshot.data}',
                    style: TextStyle(fontSize: 40),
                  ),
                );
              }),
          StreamBuilder<int>(
              stream: upCounter,
              builder: (context, snapshot) {
                return Center(
                  child: Text(
                    '${snapshot.data}',
                    style: TextStyle(fontSize: 40),
                  ),
                );
              }),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'fab1',
            child: Icon(Icons.add),
            onPressed: _counter.increase,
          ),
          FloatingActionButton(
            heroTag: 'fab2',
            child: Icon(Icons.exposure_minus_1),
            onPressed: _counter.decrease,
          ),
          FloatingActionButton(
            heroTag: 'fab3',
            child: Icon(Icons.watch_later_outlined),
            onPressed: _counter.decrease,
          ),
        ],
      ),
    );
  }
}
