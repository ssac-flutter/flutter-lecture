import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';

class MyListTile extends StatelessWidget {
  final User user;

  MyListTile(this.user);

  @override
  Widget build(BuildContext context) {
    return _buildItem(user);
  }

  Widget _buildItem(User user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Image.network(
              'https://img.huffingtonpost.com/asset/5ceb2f97240000530085474d.jpeg?cache=cjHGUeLFMo&ops=crop_0_94_1001_722,scalefit_630_noupscale',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Text(user.name),
                Text('${user.age}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
