import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3.4. Utilización de widgets',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 137, 0, 222),
          title: const Text('PELICULAS'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContainerAmarillo(
              width: 300,
              height: 60,
              texto: "Pulp Fiction",
            ),
            ContainerAmarillo(
              width: 300,
              height: 60,
              texto: "Una odisea del espacio",
            ),
            ContainerAmarillo(
              width: 300,
              height: 60,
              texto: "La lista de Schindler",
            ),
            ContainerAmarillo(
              width: 300,
              height: 60,
              texto: "Regreso al futuro",
            ),
            ContainerAmarillo(
              width: 300,
              height: 60,
              texto: "Apocalypse Now",
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerAmarillo extends StatelessWidget {
  final double width;
  final double height;
  final String texto;

  const ContainerAmarillo({
    Key? key,
    required this.width,
    required this.height,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 232, 232, 232),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(texto, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
