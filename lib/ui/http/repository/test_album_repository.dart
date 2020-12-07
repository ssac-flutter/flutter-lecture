import 'package:flutter_app/model/album.dart';
import 'package:flutter_app/ui/http/repository/default_repository.dart';

class TestAlbumRepository extends DefaultRepository {
  @override
  Future<Album> fetchAlbum(int id) {
    // TODO: implement fetchAlbum
    throw UnimplementedError();
  }

  @override
  Future<List<Album>> fetchAlbums() async {
    return List.generate(5, (index) => Album(
      userId: index,
      id: index * 10,
      title: 'test $index',
    ));
  }

}