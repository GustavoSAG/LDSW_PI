import 'package:flutter/material.dart';
import 'package:ldsw_pi/models/movie.dart';
import 'package:ldsw_pi/widgets/movie_item.dart';

class CatalogScreen extends StatelessWidget {
  final List<Movie> movies = [
    // Add your movie data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieItem(movie: movies[index]);
        },
      ),
    );
  }
}
