import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/ui/user_detail_page.dart';
import 'package:flutter_app/widget/kakao_list_tile.dart';

class ThirdPage extends StatelessWidget {
  final List<User> _items = [
    User("사나", age: 30, imageUrl: 'https://img.huffingtonpost.com/asset/5ceb2f97240000530085474d.jpeg?cache=cjHGUeLFMo&ops=crop_0_94_1001_722,scalefit_630_noupscale'),
    User("한석봉", age: 20),
    User("나연", age: 50, imageUrl: 'https://dimg.donga.com/wps/NEWS/IMAGE/2020/03/03/99974590.2.jpg'),
    User('test', age: 10)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('내 정보'),
        actions: [
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
          TextButton(child: Text('button'), onPressed: () {}),
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return ListView(
      children: _items.map((user) {
        return InkWell(
          child: KakaoListTile(user),
          onTap: () {
            // 화면 전환
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserDetailPage(user)),
            );
          },
        );
      }).toList(),
    );
  }
}