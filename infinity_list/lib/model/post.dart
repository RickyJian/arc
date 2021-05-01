import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Post extends Equatable {
  final int id;
  final String title;
  final String body;

  Post({@required this.id, this.title, this.body}) : super();

  @override
  List<Object> get props => [id, title, body];

  @override
  String toString() => 'Post{id: $id}';
}
