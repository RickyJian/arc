import 'package:movie_list/model/item.dart';
import 'package:movie_list/model/movie.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  final _item = Item();
  final _movieFetcher = PublishSubject<Movie>();

  Stream<Movie> get allMovies => _movieFetcher.stream;

  fetchAllMovies() async {
    var movies = await _item.fetchMovies();
    for (var movie in movies) {
      _movieFetcher.sink.add(movie);
    }
  }

  dispose() {
    _movieFetcher.close();
  }
}

final bloc = MovieBloc();
