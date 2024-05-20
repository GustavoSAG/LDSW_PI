import 'package:flutter/material.dart';
import 'package:ldsw_pi/widgets/movie_form.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administrar Catálogo de Películas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MovieForm()),
                );
              },
              child: Text('Agregar Película'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add navigation to edit movie screen
              },
              child: Text('Editar Película'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add navigation to delete movie screen
              },
              child: Text('Eliminar Película'),
            ),
          ],
        ),
      ),
    );
  }
}
