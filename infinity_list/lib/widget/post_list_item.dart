import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinity_list/model/model.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key key, this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: Text('${post.id}', style: textTheme.caption),
      title: Text(post.title),
      isThreeLine: true,
      subtitle: Text(post.body),
      dense: true,
    );
  }
}
