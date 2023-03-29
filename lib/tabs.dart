import 'package:flutter/material.dart';
import 'package:tabs/musica.dart';
import 'package:tabs/pelicula.dart';

class Tabs_Page extends StatefulWidget {
  const Tabs_Page({Key? key}) : super(key: key);

  @override
  State<Tabs_Page> createState() => _Tabs_PageState();
}

class _Tabs_PageState extends State<Tabs_Page> with SingleTickerProviderStateMixin {

  int paginaSeleccionada = 0;
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, initialIndex: paginaSeleccionada , vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tabs'
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                Pelicula(),
                Musica(),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.indigo
                ),
              ),
            ),
            child: Material(
              color: Colors.white,
              child: TabBar(
                controller: controller,
                indicator: BoxDecoration(
                  color: Colors.indigo,
                ),
                unselectedLabelColor: Colors.indigo,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Container(
                      child: Text(
                        'Peliculas'
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Musica'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
