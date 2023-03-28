import 'package:flutter/material.dart';
import 'package:tabs/tabs.dart';

void main (){
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Tabs_Page(),
    );
  }
}
