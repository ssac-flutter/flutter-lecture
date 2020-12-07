import 'package:flutter/material.dart';
import 'package:flutter_app/model/album.dart';
import 'package:flutter_app/ui/http/repository/album_firestore_repository.dart';
import 'package:flutter_app/ui/http/repository/default_repository.dart';
import 'package:flutter_app/ui/http/repository/album_repository.dart';

class HttpViewModel extends ChangeNotifier {

  final DefaultRepository _albumRepository;   // Repository (Model)
  HttpViewModel(this._albumRepository);

  List<Album> albums = [];

  Future<List<Album>> getAlbums() => _albumRepository.fetchAlbums();

  Future<Album> getAlbum(int id) => _albumRepository.fetchAlbum(id);

  Future<List<Album>> getAlbumLimit(int limit) async {
    List<Album> albums = await _albumRepository.fetchAlbums();
    return albums.sublist(albums.length - limit);
  }

  void fetchAlbums() {
    getAlbums().then((value) {
      albums = value;
      notifyListeners();
    });
  }

  void fetchAlbumLimit(int limit) {
    getAlbums().then((value) {
      albums = value.sublist(value.length - limit);
      notifyListeners();
    });
  }

}
