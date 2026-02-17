import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
            children: <Widget>[
              Text('Ver'),
              Text('Animales'),
            ],
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Contenedor 1: Lobos
                AnimalCard(
                    nombre: 'Lobos',
                    urlImagen:
                        'https://upload.wikimedia.org/wikipedia/commons/5/5a/Canis_lupus_265b.jpg'),
                const SizedBox(height: 24), // Added spacing between cards

                // Contenedor 2: Tigres
                AnimalCard(
                    nombre: 'Tigres',
                    urlImagen:
                        'https://images.unsplash.com/photo-1549480017-d76466a4b7e8?q=80&w=300'),
                const SizedBox(height: 24), // Added spacing between cards

                // Contenedor 3: Pandas
                AnimalCard(
                    nombre: 'Pandas',
                    urlImagen:
                        'https://media.istockphoto.com/id/523761634/es/foto/linda-oso-panda-en-un-%C3%A1rbol-para-escalar.jpg?s=612x612&w=0&k=20&c=cgj_GIpPS_hLGY43GsWwhWPctbJgONYXwDdyxyq2-Rw='),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimalCard extends StatelessWidget {
  final String nombre;
  final String urlImagen;

  const AnimalCard({
    required this.nombre,
    required this.urlImagen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0), // Padding inside the border
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Black border color
          width: 2.0, // Border width
        ),
        borderRadius:
            BorderRadius.circular(8.0), // Optional: rounded corners for aesthetics
      ),
      child: Column(
        children: <Widget>[
          Text(
            nombre,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // Borde negro entre el nombre y la imagen
          const Divider(
            color: Colors.black,
            thickness: 2.0,
            height:
                16.0, // Adjust height to control vertical spacing around the divider
          ),
          Image.network(
            urlImagen,
            width: 115,
            height: 115,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}