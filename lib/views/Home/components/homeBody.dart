import 'package:flutter/material.dart';
import 'package:maestro/views/Classes/classes.dart';
import 'package:maestro/views/Classes/components/TabBar/tapBar.dart';
import 'package:maestro/views/Home/components/cardAlumno.dart';
import 'package:maestro/views/Home/components/cardClasses.dart';
import 'package:maestro/views/Home/components/searcher.dart';
import 'package:maestro/views/Home/components/viewMore.dart';
import 'package:maestro/views/ListAlumno/listhome.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(size: size),
          ViewMore(
            title: "Clases",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HomeClasses(),
                ),
              );
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardClasses(
                  image:
                      'https://cdn-icons-png.freepik.com/512/3965/3965108.png',
                  title: "Math",
                  grade: "4C",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const TabBarPage(
                          title: "Math",
                          imageUrl:
                              'https://cdn-icons-png.freepik.com/512/3965/3965108.png',
                        ),
                      ),
                    );
                  },
                ),
                CardClasses(
                  image:
                      'https://cdn-icons-png.flaticon.com/512/10089/10089731.png',
                  title: "History",
                  grade: "4C",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const TabBarPage(
                          title: "History",
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/10089/10089731.png',
                        ),
                      ),
                    );
                  },
                ),
                CardClasses(
                  image:
                      'https://cdn-icons-png.flaticon.com/512/5190/5190400.png',
                  title: "Fisic",
                  grade: "4C",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const TabBarPage(
                          title: "Fisic",
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/5190/5190400.png',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          ViewMore(
              title: "Alumnos",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ChildListScreen(),
                  ),
                );
              }),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardAlumno(
                  image:
                      'https://cdn-icons-png.flaticon.com/512/4290/4290443.png',
                  title: "Alejandro Martínez García",
                  press: () {},
                ),
                CardAlumno(
                  image:
                      'https://cdn-icons-png.flaticon.com/512/4290/4290322.png',
                  title: "Sofía Rodríguez Pérez",
                  press: () {},
                ),
                CardAlumno(
                  image:
                      'https://cdn-icons-png.flaticon.com/512/1149/1149820.png',
                  title: "Luis Fernando López Hernández",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
