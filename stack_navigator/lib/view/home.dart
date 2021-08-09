import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:stack_navigator/bloc/bloc.dart';
import 'package:stack_navigator/view/const.dart';
import 'package:timer_builder/timer_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          var fontSize = defaultSize;
          if (state is SettingSizeClicked) {
            fontSize = state.selected.toSize();
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                currentTime,
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
              ),
              TimerBuilder.periodic(
                Duration(seconds: 1),
                builder: (context) {
                  DateFormat formatter = DateFormat(dateTimeFormat);
                  return Text(
                    formatter.format(DateTime.now()),
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
