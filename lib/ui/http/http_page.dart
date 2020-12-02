import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/model/album.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  // await: Future가 종료되는 것을 기다린다, async 키워드가 붙어있는 메서드 안에서만 사용 가능
  final http.Response response =
    await http.get('https://jsonplaceholder.typicode.com/albums/1');

  // 200 OK
  if (response.statusCode == 200) {
    // jsonDecode로 json 형태의 String을 Map 형태로 변환
    Map<String, dynamic> json = jsonDecode(response.body);
    // 변환된 Map 형태의 json을 Album 객체로 변환
    Album album = Album.fromJson(json);
    return album;
  } else {
    // 에러가 나면 예외를 발생시키고 종료
    throw Exception('Failed to load album');
  }
}

Future<List<Album>> fetchAlbums() async {
  // await: Future가 종료되는 것을 기다린다, async 키워드가 붙어있는 메서드 안에서만 사용 가능
  final http.Response response =
    await http.get('https://jsonplaceholder.typicode.com/albums');

  // 200 OK
  if (response.statusCode == 200) {
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => Album.fromJson(e)).toList();
  } else {
    // 에러가 나면 예외를 발생시키고 종료
    throw Exception('Failed to load album');
  }
}

// stful
class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  String result = '값 없음';

  @override
  void initState() {
    super.initState();

    // Future를 사용하는 방법 1
    // init();

    // Future를 사용하는 방법 2
    fetchAlbums().then((value) {
      setState(() {
        result = value.toString();
      });
    });
  }

  Future<void> init() async {
    List<Album> albums = await fetchAlbums();
    setState(() {
      result = albums.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http'),
      ),
      body: Center(
        child: Text(result),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List<Album> albums = await fetchAlbums();
          setState(() {
            result = albums.toString();
          });
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
