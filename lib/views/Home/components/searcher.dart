import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 25, right: 25, bottom: 40),
            height: size.height * 0.2 - 27,
            child: Row(
              children: <Widget>[
                Text(
                  'Hola, Profesor👋',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
                ),
                Spacer(),
                Image.network('https://cdn-icons-png.flaticon.com/512/2883/2883841.png'),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 20,
                    color: Color(0xFF60A9CD),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Buscar...",
                        hintStyle: TextStyle(
                          color: Color(0xFF60A9CD).withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
