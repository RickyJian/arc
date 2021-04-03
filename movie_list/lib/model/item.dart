import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'movie.dart';

class Item {
  List _movieAssets = [
    "assets/inception.json",
    "assets/jurassic_world.json",
    "assets/knives_out.json",
    "assets/little_women.json",
    "assets/mission_impossible.json",
  ];

  Future<List<Movie>> fetchMovies() async {
    List<Movie> movieList = [];
    for (int i = 0; i < _movieAssets.length; i++) {
      await getMovie(_movieAssets[i]).then((value) => movieList.add(value));
    }
    return movieList;
  }

  Future<Movie> getMovie(String path) => rootBundle
      .loadString(path)
      .then((value) => Movie.fromJson(jsonDecode(value)));
}
