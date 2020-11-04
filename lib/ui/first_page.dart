import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
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
