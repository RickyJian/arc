import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:just_test_application/counter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rxdart demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'rxdart demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterBloc _counterBloc = new CounterBloc(count: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("rxdart with bloc demo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              width: 300.0,
              height: 550.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Subject result:",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  StreamBuilder(
                    stream: _counterBloc.counterObservable,
                    builder: (context, AsyncSnapshot<int> snapshot) {
                      return Text(
                        '${snapshot.data}',
                        style: TextStyle(color: Colors.black87, fontSize: 30),
                      );
                    },
                  ),
                  // Text(
                  //   '$_counter',
                  //   style: TextStyle(color: Colors.black87, fontSize: 30),
                  // ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: _counterBloc.increase,
                      child: Text("Increase"),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: _counterBloc.decrease,
                      child: Text("Decrease"),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: _counterBloc.reset,
                      child: Text("Reset"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
