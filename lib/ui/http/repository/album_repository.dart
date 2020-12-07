import 'dart:convert';

import 'package:flutter_app/ui/http/repository/default_repository.dart';

import '../../../model/album.dart';
import 'package:http/http.dart' as http;

class AlbumRepository extends DefaultRepository {

  @override
  Future<Album> fetchAlbum(int id) async {
    // await: Future가 종료되는 것을 기다린다, async 키워드가 붙어있는 메서드 안에서만 사용 가능
    final http.Response response =
    await http.get('https://jsonplaceholder.typicode.com/albums/$id');

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

  @override
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
}