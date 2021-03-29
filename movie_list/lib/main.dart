import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie list',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'movie list'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/inception.jpg",
    "assets/jurassic_world.jpg",
    "assets/knives_out.jpg",
    "assets/little_women.jpg",
    "assets/mission_impossible.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizerUtil().init(constraints, orientation);
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0.w,
                      height: 60.0.h,
                      padding: EdgeInsets.all(1.0.h),
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset(images[index]);
                        },
                        itemCount: images.length,
                        viewportFraction: 0.7,
                        scale: 0.9,
                      ),
                    ),
                    Container(
                      width: 100.0.w,
                      height: 40.0.h,
                      padding: EdgeInsets.all(3.0.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Name:',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                'Inception',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Release Date:',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                '2020-10-01',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Rate:',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                '85',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Description:',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                'rich text',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
