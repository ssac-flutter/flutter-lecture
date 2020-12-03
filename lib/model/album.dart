import 'package:flutter/material.dart';

class Album {
  late int userId;
  late int id;
  late String title;

  Album({
      this.userId = 0,
      this.id = 0,
      this.title = ""});

  Album.fromJson(Map<String, dynamic> json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userId"] = userId;
    map["id"] = id;
    map["title"] = title;
    return map;
  }

  @override
  String toString() {
    return 'Album{userId: $userId, id: $id, title: $title}';
  }
}