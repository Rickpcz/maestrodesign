import 'package:flutter/material.dart';
import 'package:maestro/views/Classes/components/cardsClasses.dart';
import 'package:maestro/views/Classes/components/TabBar/tapBar.dart';

class HomeClasses extends StatelessWidget {
  const HomeClasses({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              iconSize: 30,
              icon: const Icon(
                Icons.menu_outlined,
              ),
              onPressed: () {},
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const Text(
            'Tus Clases',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: <Widget>[
                        buildCard('Math',
                            'https://cdn-icons-png.freepik.com/512/3965/3965108.png',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const TabBarPage(
                                title: "Math",
                                imageUrl: 'https://cdn-icons-png.freepik.com/512/3965/3965108.png',
                              ),
                            ),
                          );
                        }, Colors.red),
                        buildCard('Fisic',
                            'https://cdn-icons-png.flaticon.com/512/5190/5190400.png',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const TabBarPage(
                                title: "Fisic",
                                imageUrl: 'https://cdn-icons-png.flaticon.com/512/5190/5190400.png',
                              ),
                            ),
                          );
                        }, Color(0xFF60A9CD)),
                        buildCard('History',
                            'https://cdn-icons-png.flaticon.com/512/10089/10089731.png',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const TabBarPage(
                                title: "History",
                                imageUrl:'https://cdn-icons-png.flaticon.com/512/10089/10089731.png' ,
                              ),
                            ),
                          );
                        }, Colors.deepPurple),
                      ],
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
