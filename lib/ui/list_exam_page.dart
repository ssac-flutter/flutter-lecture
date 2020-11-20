import 'package:flutter/material.dart';

class ListExamPage extends StatelessWidget {
  // final items = [1, 2, 3, 4, 5];
  final items = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: items.map((e) => Text('$e')).toList(),
    );
  }
}
