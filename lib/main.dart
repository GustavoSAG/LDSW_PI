import 'package:flutter/material.dart';
import 'package:ldsw_pi/screens/home_screen.dart';
import 'package:ldsw_pi/screens/catalog_screen.dart';
import 'package:ldsw_pi/screens/movie_detail_screen.dart';
import 'package:ldsw_pi/screens/admin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Catalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/catalog': (context) => CatalogScreen(),
        '/movie_detail': (context) => MovieDetailScreen(movie: null),
        '/admin': (context) => AdminScreen(),
      },
    );
  }
}
