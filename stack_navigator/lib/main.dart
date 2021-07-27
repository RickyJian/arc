import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stack_navigator/bloc/bottom_navigation_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => BottomNavigationBloc(),
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
        title: Text("Navigator Demo"),
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'profile',
          )
        ],
        onTap: (index) {
          // switch (index) {
          //   case 0:
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          //     break;
          //   case 1:
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
          //     break;
          //   default:
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => NotFoundPage()));
          //     break;
          // }
        },
      ),
    );
  }
}
