import 'package:movie_list/model/item.dart';
import 'package:movie_list/resource/movie.dart';
import 'package:rxdart/rxdart.dart';

class ItemBloc {
  final _provider = MovieProvider();
  final _movieFetcher = PublishSubject<Item>();

  Stream<Item> get allMovies => _movieFetcher.stream;

  fetchAllMovies() async =>
      _movieFetcher.sink.add(await _provider.fetchAllMovies());

  dispose() => _movieFetcher.close();
}

final itemBloc = ItemBloc();
