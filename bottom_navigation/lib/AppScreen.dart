import 'package:bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:bottom_navigation/page/first.dart';
import 'package:bottom_navigation/page/second.dart';
import 'package:bottom_navigation/page/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavigationBloc = BlocProvider.of<BottomNavigationBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom navigation"),
      ),
      body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        bloc: bottomNavigationBloc,
        builder: (BuildContext context, BottomNavigationState state) {
          if (state is PageLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is FirstPageLoaded) {
            return FirstPage(text: "First Page");
          } else if (state is SecondPageLoaded) {
            return SecondPage(text: "Second Page");
          } else if (state is ThirdPageLoaded) {
            return ThirdPage(text: "Third Page");
          }
          return Container();
        },
      ),
      bottomNavigationBar:
          BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        bloc: bottomNavigationBloc,
        builder: (BuildContext context, BottomNavigationState state) {
          return BottomNavigationBar(
            currentIndex: bottomNavigationBloc.currentIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blue),
                label: 'first',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_chart, color: Colors.blue),
                label: 'second',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp, color: Colors.blue),
                label: 'third',
              ),
            ],
            onTap: (index) => bottomNavigationBloc.add(
              PageTapped(index: index),
            ),
          );
        },
      ),
    );
  }
}
