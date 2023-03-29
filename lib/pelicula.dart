import 'package:flutter/material.dart';

class Pelicula extends StatefulWidget {
  const Pelicula({Key? key}) : super(key: key);

  @override
  State<Pelicula> createState() => _PeliculaState();
}

class _PeliculaState extends State<Pelicula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Matrix'),
      ),
    );
  }
}
