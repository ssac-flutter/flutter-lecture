import 'package:flutter/material.dart';
import 'package:flutter_app/ui/first_page.dart';
import 'package:flutter_app/ui/second_page.dart';
import 'package:flutter_app/ui/third_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  // _pages[_index]
  List<Widget> _pages = [
    FirstPage(),  // _pages[0]
    SecondPage(), // _pages[1]
    ThirdPage(), // _pages[2]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services),
            label: '이용서비스',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: '내 정보',
          ),
        ],
        currentIndex: _index,
        onTap: (int value) {
          print('tapped : $value');
          setState(() {
            _index = value;
          });
        },
      ),
    );
  }
}
