import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catálogo de Películas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red, // Color llamativo para la AppBar
        elevation: 0, // Sin sombra en la AppBar
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20.0),
            _buildCategoryButton(context, 'Películas Populares', Colors.blue),
            _buildCategoryButton(context, 'Nuevos Lanzamientos', Colors.green),
            _buildCategoryButton(context, 'Mis Favoritos', Colors.orange),
            SizedBox(height: 20.0),
            _buildMovieCard(context, 'Iron Man', 'assets/iron_man.jpg'),
            _buildMovieCard(context, 'Spider-Man: Into the Spider-Verse', 'assets/spiderman.jpg'),
            _buildMovieCard(context, 'Avengers: Endgame', 'assets/avengers.jpg'),
            // Agrega más tarjetas de películas según sea necesario
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, String title, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ElevatedButton(
        onPressed: () {
          // Acción al seleccionar una categoría
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color), // Color llamativo para los botones de categoría
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  Widget _buildMovieCard(BuildContext context, String title, String imageUrl) {
    return GestureDetector(
      onTap: () {
        // Acción al seleccionar una película
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                imageUrl,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
