import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:maestro/views/Category/category.dart';
import 'package:maestro/views/Classes/classes.dart';
import 'package:maestro/views/Home/home.dart';
import 'package:maestro/views/ListAlumno/listhome.dart';
import 'package:maestro/views/profile.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF60A9CD),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/2883/2883841.png',
                        ),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Profesor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      DrawerItem(
                        text: 'Inicio',
                        icon: Icons.home_rounded,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const bNBar(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      DrawerItem(
                        text: 'Pictogramas',
                        icon: Icons.search_rounded,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PerfilPage(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      DrawerItem(
                        text: 'Clases',
                        icon: Icons.class_rounded,
                        onTap: () {
                          Navigator.pop(context); // Cierra el drawer
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeClasses(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      DrawerItem(
                        text: 'Alumnos',
                        icon: Icons.group_rounded,
                        onTap: () {
                          Navigator.pop(context); // Cierra el drawer
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChildListScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      DrawerItem(
                        text: 'Categoría',
                        icon: Icons.category,
                        onTap: () {
                          Navigator.pop(context); // Cierra el drawer
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PageVocabulary(),
                            ),
                          );
                        },

                      ),
                       const SizedBox(height: 20),
                      DrawerItem(
                        text: 'Perfil',
                        icon: Icons.person,
                        onTap: () {
                          Navigator.pop(context); // Cierra el drawer
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PerfilPage(),
                            ),
                          );
                        },

                      ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Lógica para cerrar sesión
                },
                child: const Row(
                  children: <Widget>[
                    Icon(
                      Icons.logout_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Log out',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const DrawerItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(width: 20),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class bNBar extends StatefulWidget {
  const bNBar({Key? key}) : super(key: key);

  @override
  State<bNBar> createState() => _bNBarState();
}

class _bNBarState extends State<bNBar> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final screens = [
    const HomeScreen(),
    const PerfilPage(),
    const HomeClasses(),
  ];
  final colors = [
    const Color(0xFF60A9CD),
    Colors.purple,
    Colors.green,
    Colors.red,
  ];

  // ignore: unused_field
  double _scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          screens[_currentIndex],
          Positioned(
            top: 35,
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              iconSize: 30,
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
                setState(() {
                  _scaleFactor = 0.8;
                });
              },
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: DrawerScreen(),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          tabBackgroundColor: colors[0],
          selectedIndex: _currentIndex,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTabChange: (index) {
            setState(() {
              _currentIndex = index;
              _scaleFactor = 1.0;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Inicio',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.search,
              text: 'Pictogramas',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.assignment,
              text: 'Clases',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
