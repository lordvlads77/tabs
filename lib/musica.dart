import 'package:flutter/material.dart';

class Musica extends StatefulWidget {
  const Musica({Key? key}) : super(key: key);

  @override
  State<Musica> createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ghost'),
      ),
    );
  }
}
