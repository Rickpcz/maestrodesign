import 'package:flutter/material.dart';
import 'package:maestro/views/Classes/components/TabBar/components/Tareas/cardTareas.dart';

class TareasTab extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl; // URL de la imagen de la clase
  final DateTime dueDate; // Fecha de vencimiento

  const TareasTab({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.dueDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardTareas(
        imageUrl: imageUrl,
        title: title,
        description: description,
        dueDate: dueDate,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 110, // Ancho del botón
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF60A9CD),
            onPressed: () {
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Agregar', style: TextStyle(color: Colors.white, fontSize: 16)),
                Icon(Icons.add, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
