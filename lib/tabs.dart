import 'package:flutter/material.dart';

class Tabs_Page extends StatefulWidget {
  const Tabs_Page({Key? key}) : super(key: key);

  @override
  State<Tabs_Page> createState() => _Tabs_PageState();
}

class _Tabs_PageState extends State<Tabs_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tabs'
        ),
      ),
      body: Center(),
    );
  }
}
