import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  UserDetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나연'),
      ),
      body: Column(
        children: [
          Image.network(
            user.imageUrl,
            width: 150,
            height:150,
            fit: BoxFit.cover,
          ),
          Text(user.name),
        ],
      ),
    );
  }
}
