import 'package:flutter/material.dart';
class TextClasses extends StatelessWidget {
  const TextClasses({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25 / 4),
            child: Text(text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ,
            ),
          ),
          
        ],
      ),
    );
  }
}

