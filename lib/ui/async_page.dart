import 'package:flutter/material.dart';
import 'package:flutter_app/model/album.dart';
import 'package:flutter_app/ui/http/http_page.dart';

class AsyncPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비동기 프로그래밍'),
      ),
      body: FutureBuilder<Album>(
        future: fetchAlbum(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text(snapshot.data.toString()));
          } else if (snapshot.hasError) {
            return Center(child: Text('에러가 발생했어요'));
          }
          return Center(child: CircularProgressIndicator());
        }
      ),
    );
  }
}
