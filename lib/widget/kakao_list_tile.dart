import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/ui/user_photo_detail_page.dart';

class KakaoListTile extends StatelessWidget {
  final User user;

  KakaoListTile(this.user);

  @override
  Widget build(BuildContext context) {
    return _buildItem(context, user);
  }

  Widget _buildItem(context, User user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserPhotoDetailPage(user)),
              );
            },
            child: Hero(
              tag: user,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.network(user.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name, style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                  Text('${user.age}'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('오후 8:24'),
          ),
        ],
      ),
    );
  }
}