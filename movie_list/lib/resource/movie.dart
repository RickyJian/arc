import 'package:movie_list/model/item.dart';

class MovieProvider {
  Future<Item> fetchAllMovies() async => await Item().fetchMovies();
}
