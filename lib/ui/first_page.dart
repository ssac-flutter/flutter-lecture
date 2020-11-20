import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/async_page.dart';
import 'package:flutter_app/ui/http/http_page.dart';
import 'package:flutter_app/ui/list_exam_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('리스트 복습'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListExamPage()),
                );
              },
            ),
            ListTile(
              title: Text('Http 통신'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HttpPage()),
                );
              },
            ),
            ListTile(
              title: Text('비동기 프로그래밍'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AsyncPage()),
                );
              },
            ),
          ],
        ),// Populate the Drawer in the next step.
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Kakao T'),
      ),
      body: ListView(
        children: [
          _buildMenuSection(),
          _buildAdSection(),
          _buildNoticeSection(),
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String title) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(title),
      ],
    );
  }

  Widget _buildMenuSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem(Icons.local_taxi, '택시'),
            _buildItem(Icons.local_taxi, '블랙'),
            _buildItem(Icons.local_taxi, '바이크'),
            _buildItem(Icons.local_taxi, '대리'),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem(Icons.local_taxi, '택시'),
            _buildItem(Icons.local_taxi, '블랙'),
            _buildItem(Icons.local_taxi, '바이크'),
            Opacity(
              opacity: 0.0,
              child: _buildItem(Icons.local_taxi, '대리'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAdSection() {
    return CarouselSlider(
      items: [
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
      ],
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
      ),
    );
  }

  Widget _buildNoticeSection() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('[이벤트] 추석 어쩌구 저쩌구 !!@#!@#!@#'),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('[이벤트] 추석 어쩌구 저쩌구 !!@#!@#!@#'),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('[이벤트] 추석 어쩌구 저쩌구 !!@#!@#!@#'),
        ),
      ],
    );
  }
}
