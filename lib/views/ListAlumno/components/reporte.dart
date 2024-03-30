import 'package:flutter/material.dart';
import 'package:maestro/views/ListAlumno/components/alumno.dart';

class ChildReportScreen extends StatelessWidget {
  final Child child;

  const ChildReportScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${child.name}'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Aquí podrías implementar la lógica para enviar el reporte
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Ejemplo: supongamos que hay 5 reportes
              itemBuilder: (context, index) {
                // Aquí puedes reemplazar este ListTile con la representación de cada reporte
                return ListTile(
                  title: Text('Reporte ${index + 1}'),
                  subtitle: Text('Descripción del reporte ${index + 1}'),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Título',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Fecha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Reporte',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Lógica para enviar el reporte
                  },
                  icon: Icon(Icons.send),
                  label: Text('Enviar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
