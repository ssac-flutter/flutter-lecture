import 'package:flutter/material.dart';
import 'package:flutter_app/navigation/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('화면 전환'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(name),
          // 최근 바뀐 버튼
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage('hello')),
              );
            },
            child: Text('클릭'),
          ),
          // 옛날 거
          RaisedButton(
            onPressed: () {
              Future<String> future = Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage('아래꺼')),
              );

              future.then((value) {
                setState(() {
                  if (value != null) {
                    name = value;
                  }
                });
              });
            },
            child: Text(
              '클릭',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              name = '';
            });
          }, child: Text('reset'))
        ],
      ),
    );
  }
}