import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VocabularyDashboard extends StatelessWidget {
  Items item1 = Items(
      title: "Comida",
      img: "https://cdn-icons-png.flaticon.com/128/737/737967.png");

  Items item2 = Items(
    title: "Animales",

    img: "https://cdn-icons-png.flaticon.com/128/489/489399.png",
  );
  
  Items item4 = Items(
    title: "Higiene",

    img: "https://cdn-icons-png.flaticon.com/128/2870/2870732.png",
  );
  Items item5 = Items(
    title: "Deportes",

    img: "https://cdn-icons-png.flaticon.com/128/857/857455.png",
  );
  
  Items item6 = Items(
    title: "Reglas",

    img: "https://cdn-icons-png.flaticon.com/128/10236/10236264.png",
  );

  Items item7 = Items(
    title: "Escuela",

    img: "https://cdn-icons-png.flaticon.com/128/4207/4207253.png",
  );

  Items item8 = Items(
    title: "Arte",

    img: "https://cdn-icons-png.flaticon.com/128/1048/1048944.png",
  );

  Items item9 = Items(
    title: "Naturaleza",

    img: "https://cdn-icons-png.flaticon.com/128/2913/2913483.png",
  );

  VocabularyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2,  item4, item5, item6, item7, item8, item9];
  
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: const EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    data.img,
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style:TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  
                  const SizedBox(
                    height: 14,
                  ),
                  
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;

  String img;
  Items({required this.title, required this.img});
}