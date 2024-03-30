import 'package:flutter/material.dart';

class CardClasses extends StatelessWidget {
  const CardClasses({
    Key? key,
    required this.image,
    required this.title,
    required this.grade,
    required this.press,
  }) : super(key: key);

  final String image, title, grade;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: 25,
          top: 12.5,
          bottom: 25,
        ),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Transform.scale(
              scale: 0.8,
              child: Image.network(image),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(25/2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: Color(0xFF60A9CD).withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    grade.toUpperCase(),
                    style: TextStyle(color: Color(0xFF60A9CD).withOpacity(0.5), fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
