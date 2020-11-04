import 'package:flutter/material.dart';

class ListExam extends StatelessWidget {
  List<String> items = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List 연습'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
