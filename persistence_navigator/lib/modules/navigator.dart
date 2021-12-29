import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/components.dart';
import 'views/views.dart';

class ColorNavigator extends StatelessWidget {
  final BottomItem item;

  const ColorNavigator({required this.item});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(item.id),
      initialRoute: ColorRouter.list.path,
      onGenerateRoute: (settings) {
        if (settings.name == ColorRouter.list.path) {
          return GetPageRoute(
            routeName: ColorRouter.list.path,
            page: () => ListPage(item: item),
          );
        } else if (settings.name == ColorRouter.detail.path) {
          var idx = settings.arguments! as int;
          return GetPageRoute(
            routeName: ColorRouter.detail.path,
            page: () => DetailPage(item: item, index: idx),
          );
        }
      },
    );
  }
}

enum ColorRouter { list, detail }

extension ColorRouterExtension on ColorRouter {
  String get path {
    switch (this) {
      case ColorRouter.list:
        return '/';
      case ColorRouter.detail:
        return '/detail';
    }
  }
}
