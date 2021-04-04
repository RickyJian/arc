import 'dart:convert';
import 'dart:core';

import 'package:flutter/services.dart' show rootBundle;

class Item {
  List _movieAssets = [
    "assets/inception.json",
    "assets/jurassic_world.json",
    "assets/knives_out.json",
    "assets/little_women.json",
    "assets/mission_impossible.json",
  ];

  int _total;
  List<_Movie> _movieList = [];

  Future<Item> fetchMovies() async {
    var item = Item();
    var movieLen = _movieAssets.length;
    List<_Movie> movieList = [];
    for (int i = 0; i < movieLen; i++) {
      await getMovie(_movieAssets[i]).then((value) => movieList.add(value));
    }
    item._total = movieLen;
    item._movieList = movieList;
    return item;
  }

  Future<_Movie> getMovie(String path) => rootBundle
      .loadString(path)
      .then((value) => _Movie.fromJson(jsonDecode(value)));

  int get total => _total;

  List<_Movie> get movies => _movieList;
}

class _Movie {
  String _name;
  DateTime _releaseDate;
  double _rate;
  String _description;
  String _path;

  _Movie.fromJson(Map<String, dynamic> json) {
    _name = json["name"];
    _releaseDate = DateTime.parse(json["release_date"]);
    _rate = json["rate"] as double;
    _description = json["description"];
    _path = json["path"];
  }

  String get name => _name;

  DateTime get releaseDate => _releaseDate;

  double get rate => _rate;

  String get description => _description;

  String get path => _path;
}
