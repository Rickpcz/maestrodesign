import 'package:flutter/material.dart';
import 'package:maestro/BottomNavigationBar.dart';
import 'package:maestro/views/Home/components/homeBody.dart';
// Asegúrate de importar tu DrawerScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              iconSize: 30,
              icon: Icon(Icons.menu_outlined),
              onPressed: () {
                Scaffold.of(context).openDrawer(); 
              },
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 30,
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: BodyHome(),
      drawer: DrawerScreen(), // Agrega tu Drawer aquí
    );
  }
}
