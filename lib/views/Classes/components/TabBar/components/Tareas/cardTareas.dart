import 'package:flutter/material.dart';

class CardTareas extends StatelessWidget {
  const CardTareas({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.dueDate,
  });

  final String imageUrl;
  final String title;
  final String description;
  final DateTime dueDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 1,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Mostrar la foto de la clase
                ClipRRect(
                  child: Image.network(
                    imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Descripción de la tarea
                      Text(
                        description,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      // Fecha de vencimiento
                      Text(
                        'Vencimiento: ${dueDate.day}/${dueDate.month}/${dueDate.year}',
                        style: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    
      ],
    );
  }
}
