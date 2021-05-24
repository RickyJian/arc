import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliverlist Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sliverlist example"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Center(
              child: Text(
                'Sliver App Bar Demo',
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
            ),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/header_background.jpg',
                fit: BoxFit.cover,
              ),
            ),
            forceElevated: true,
            // floating: true,
            // snap: true,
            pinned: true,
          ),
          SliverFixedExtentList(
            itemExtent: 100,
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.indigo,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.indigo,
                ),
                Container(
                  color: Colors.purple,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
