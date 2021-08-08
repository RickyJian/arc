import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stack_navigator/bloc/bloc.dart';
import 'package:stack_navigator/view/const.dart';
import 'package:stack_navigator/widget/widget.dart';

class SettingSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingBloc settingBloc = BlocProvider.of<SettingBloc>(context);
    return Center(
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          var selected = SettingButton.small;
          if (state is SettingSizeClicked) {
            selected = state.selected;
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SettingColumn(
                selected: selected,
                items: [SettingButton.large, SettingButton.medium, SettingButton.small],
                onPressed: (selected) => settingBloc.add(SettingSizeClick(size: selected)),
              ),
              TextButton(
                onPressed: () {
                  print('dispatch to color setting');
                },
                child: const Text('color setting >>'),
              ),
            ],
          );
        },
      ),
    );
  }
}
