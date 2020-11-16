import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // "0" ~ "99" 까지 리스트
  final _items = List.generate(100, (index) => "$index");
  var _query = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('검색'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  _query = text;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '검색어',
              ),
            ),
            Expanded(
              child: ListView(
                children: _items
                    .where((e) => e.startsWith(_query))
                    .map((e) => ListTile(title: Text("$e"))).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
