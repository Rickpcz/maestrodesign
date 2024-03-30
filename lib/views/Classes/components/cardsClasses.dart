import 'package:flutter/material.dart';

Widget buildCard(String title, String imageUrl, VoidCallback press, Color color) {
  return Card(
    elevation: 4,
    margin: const EdgeInsets.all(8),
    child: InkWell(
      onTap: press,
      child: Container(
        width: double.infinity, // Ancho máximo permitido
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24), // Aumenta el espacio vertical
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), // Bordes redondeados
          color: color.withOpacity(0.8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );
}
