import 'package:flutter_app/model/album.dart';
import 'package:flutter_app/ui/http/repository/default_repository.dart';

class AlbumFirestoreRepository extends DefaultRepository {
  @override
  Future<Album> fetchAlbum(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Album>> fetchAlbums() {
    // TODO: implement fetchAlbums
    throw UnimplementedError();
  }

}