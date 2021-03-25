import 'package:rxdart/rxdart.dart';

class CounterBloc {
  int count = 0;
  BehaviorSubject<int> _subject;

  Stream<int> get counterObservable => _subject.stream;

  CounterBloc({this.count}) {
    _subject = new BehaviorSubject<int>.seeded(0);
  }

  void increase() {
    count++;
    _subject.sink.add(count);
  }

  void decrease() {
    count--;
    _subject.sink.add(count);
  }

  void dispose() {
    _subject.close();
  }

  void reset() {
    count = 0;
    _subject.sink.add(count);
  }
}
