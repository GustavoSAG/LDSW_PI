import 'package:flutter/material.dart';
import 'package:ldsw_pi/models/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie? movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Detail'),
      ),
      body: Center(
        child: Text('Movie Detail Screen'),
      ),
    );
  }
}
