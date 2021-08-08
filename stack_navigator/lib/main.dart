import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stack_navigator/bloc/bloc.dart';
import 'package:stack_navigator/view/view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tack Navigator Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BottomNavigationBloc(),
          ),
          BlocProvider(
            create: (context) => SettingBloc(),
          ),
        ],
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BottomNavigationBloc _bottomNavigation;

  @override
  void initState() {
    super.initState();
    _bottomNavigation = context.read<BottomNavigationBloc>();
  }

  @override
  void dispose() {
    super.dispose();
    _bottomNavigation.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Navigator Demo"),
      ),
      body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          if (state is BottomNavigationHomePageLoading) {
            return HomePage();
          } else if (state is BottomNavigationSettingSizeLoading) {
            return SettingSizePage(size: SettingButton.small);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'setting',
              )
            ],
            onTap: (index) => _bottomNavigation.add(BottomNavigationTapped(index)),
          );
        },
      ),
    );
  }
}
