import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stack_navigator/bloc/bloc.dart';
import 'package:stack_navigator/view/const.dart';
import 'package:stack_navigator/widget/widget.dart';

class SettingColorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RouterBloc routerBloc = BlocProvider.of<RouterBloc>(context);
    SettingBloc settingBloc = BlocProvider.of<SettingBloc>(context);
    return Center(
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          var selected = SettingButton.black;
          if (state is SettingColorClicked) {
            selected = state.selected;
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SettingColumn(
                selected: selected,
                items: [SettingButton.black, SettingButton.red, SettingButton.blue],
                onPressed: (selected) => settingBloc.add(SettingColorClick(color: selected)),
              ),
              TextButton(
                onPressed: () => routerBloc.add(SettingPageRedirect(index: 2)),
                child: const Text('format setting >>'),
              ),
            ],
          );
        },
      ),
    );
  }
}
