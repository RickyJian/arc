import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail.dart';

class ListPage extends StatelessWidget {
  final MaterialColor color;
  final List<int> materialIndices = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];

  ListPage({required this.color});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: materialIndices.length,
        itemBuilder: (context, index) {
          var bodyHeight = MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight!;
          var colorBarHeight = bodyHeight / materialIndices.length;
          var idx = materialIndices[index];
          return Container(
            height: colorBarHeight,
            color: color[idx],
            child: Center(
              child: ListTile(
                title: Text(
                  '$idx',
                  style: const TextStyle(fontSize: 24.0),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => Get.to(DetailPage(color: color, index: idx)),
              ),
            ),
          );
        },
      );
}
