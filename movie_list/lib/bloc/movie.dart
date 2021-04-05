import 'package:movie_list/model/item.dart' show Movie;
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  var _movieFetcher = BehaviorSubject<Movie>();

  Stream<Movie> get movie => _movieFetcher.stream;

  MovieBloc() {
    _movieFetcher =
        BehaviorSubject<Movie>.seeded(Movie("", DateTime.now(), 0.0, ""));
  }

  void setMovie(
          String name, DateTime releaseDate, double rate, String description) =>
      _movieFetcher.sink.add(Movie(name, releaseDate, rate, description));

  dispose() => _movieFetcher.close();
}

final movieBloc = MovieBloc();
