import 'package:flutter_app/model/album.dart';

abstract class DefaultRepository {
  Future<Album> fetchAlbum(int id);

  Future<List<Album>> fetchAlbums();
}