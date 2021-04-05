import 'package:movie_list/model/item.dart' show Movie;
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  final _movieFetcher = PublishSubject<Movie>();

  Stream<Movie> get movie => _movieFetcher.stream;

  void setMovie(
          String name, DateTime releaseDate, double rate, String description) =>
      _movieFetcher.sink.add(Movie(name, releaseDate, rate, description));

  dispose() => _movieFetcher.close();
}

final movieBloc = MovieBloc();
