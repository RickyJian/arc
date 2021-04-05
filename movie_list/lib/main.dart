import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:movie_list/bloc/item.dart';
import 'package:movie_list/bloc/movie.dart';
import 'package:movie_list/model/item.dart' as model;
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
  @override
  Widget build(BuildContext context) {
    itemBloc.fetchAllMovies();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizerUtil().init(constraints, orientation);
              return StreamBuilder(
                stream: itemBloc.allMovies,
                builder: (context, AsyncSnapshot<model.Item> snapshot) {
                  movieBloc.setMovie(
                      snapshot.data.movies[0].name,
                      snapshot.data.movies[0].releaseDate,
                      snapshot.data.movies[0].rate,
                      snapshot.data.movies[0].description);
                  return buildSwiper(snapshot);
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget buildSwiper(AsyncSnapshot<model.Item> snapshot) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0.w,
            height: 60.0.h,
            padding: EdgeInsets.all(1.0.h),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) =>
                  Image.asset(snapshot.data.movies[index].path),
              itemCount: 5,
              viewportFraction: 0.7,
              scale: 0.9,
              onIndexChanged: (int index) {
                movieBloc.setMovie(
                    snapshot.data.movies[index].name,
                    snapshot.data.movies[index].releaseDate,
                    snapshot.data.movies[index].rate,
                    snapshot.data.movies[index].description);
              },
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
                    StreamBuilder(
                      stream: movieBloc.movie,
                      builder: (context, AsyncSnapshot<model.Movie> snapshot) {
                        return Text(
                          snapshot.data.name,
                          style: TextStyle(fontSize: 30),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Release Date:',
                      style: TextStyle(fontSize: 30),
                    ),
                    StreamBuilder(
                      stream: movieBloc.movie,
                      builder: (context, AsyncSnapshot<model.Movie> snapshot) {
                        return Text(
                          DateFormat('yyyy-MM-dd')
                              .format(snapshot.data.releaseDate),
                          style: TextStyle(fontSize: 30),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Rate:',
                      style: TextStyle(fontSize: 30),
                    ),
                    StreamBuilder(
                      stream: movieBloc.movie,
                      builder: (context, AsyncSnapshot<model.Movie> snapshot) {
                        return Text(
                          snapshot.data.rate.toString(),
                          style: TextStyle(fontSize: 30),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Description:',
                      style: TextStyle(fontSize: 30),
                    ),
                    StreamBuilder(
                      stream: movieBloc.movie,
                      builder: (context, AsyncSnapshot<model.Movie> snapshot) {
                        return Text(
                          snapshot.data.description,
                          style: TextStyle(fontSize: 30),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
