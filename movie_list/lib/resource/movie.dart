import 'package:movie_list/model/item.dart';

class MovieProvider {
  Future<Item> fetchAllMovies() async {
    return await Item().fetchMovies();
  }
}
