import 'package:flutter/material.dart';
import 'package:maestro/views/Home/components/textClases.dart';
class ViewMore extends StatelessWidget {
  const ViewMore({
    Key? key, 
    required this.title, 
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          TextClasses(text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFF60A9CD), 
            ),
            onPressed: press, 
            child: Text('Ver más', style: TextStyle(color: Colors.white)) // Estilo del texto
          )
        ],
      ),
    );
  }
}
