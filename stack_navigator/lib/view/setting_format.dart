import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stack_navigator/bloc/bloc.dart';
import 'package:stack_navigator/view/const.dart';
import 'package:stack_navigator/widget/widget.dart';

class SettingFormatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RouterBloc routerBloc = BlocProvider.of<RouterBloc>(context);
    SettingBloc settingBloc = BlocProvider.of<SettingBloc>(context);
    return Center(
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          var selected = SettingButton.datetime;
          if (state is SettingFormatClicked) {
            selected = state.selected;
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SettingColumn(
                selected: selected,
                items: [SettingButton.datetime, SettingButton.date, SettingButton.time],
                onPressed: (selected) => settingBloc.add(SettingFormatClick(format: selected)),
              ),
              TextButton(
                onPressed: () => routerBloc.add(SettingPageRedirect(index: 0)),
                child: const Text('size setting >>'),
              ),
            ],
          );
        },
      ),
    );
  }
}
