import 'package:flutter/material.dart';
import 'package:ldsw_pi/models/movie.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(movie.title),
      subtitle: Text(movie.director),
      onTap: () {
        Navigator.pushNamed(
          context,
          '/movie_detail',
          arguments: movie,
        );
      },
    );
  }
}
