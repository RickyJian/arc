import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stack_navigator/bloc/bloc.dart';
import 'package:stack_navigator/view/setting_color.dart';
import 'package:stack_navigator/view/setting_format.dart';
import 'package:stack_navigator/view/setting_size.dart';

class SettingRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingRouter();
}

class _SettingRouter extends State<SettingRouter> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouterBloc, RouterState>(
      builder: (context, state) {
        var index = 0;
        if (state is SettingPageLoaded) {
          index = state.index;
        }
        return IndexedStack(
          index: index,
          children: <Widget>[
            SettingSizePage(),
            SettingColorPage(),
            SettingFormatPage(),
          ],
        );
      },
    );
  }
}
