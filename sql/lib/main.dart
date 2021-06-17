import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQL Practice',
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
        title: Text('SQL Practice'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('item'),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(Icons.add),
              onPressed: null,
            ),
          ),
          Expanded(
            flex: 1,
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              child: Icon(Icons.remove),
              onPressed: null,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
