import 'package:flutter/material.dart';

class CardAlumno extends StatelessWidget {
  const CardAlumno({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
          GestureDetector(
            onTap: () => press(),
            child: Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinear los elementos extremo a extremo
                children: <Widget>[
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 18),
                      overflow: TextOverflow.visible, // Ajusta el texto si es demasiado largo
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
