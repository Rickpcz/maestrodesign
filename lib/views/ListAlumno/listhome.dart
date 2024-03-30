import 'package:flutter/material.dart';
import 'package:maestro/views/ListAlumno/components/listalumno.dart';


class ChildListScreen extends StatelessWidget {
  const ChildListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Niños'),
      ),
      body: const ChildListView(),
    );
  }
}
