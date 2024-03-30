import 'package:flutter/material.dart';
import 'package:maestro/views/ListAlumno/components/alumno.dart';
import 'package:maestro/views/ListAlumno/components/cardalumno.dart';
import 'package:maestro/views/ListAlumno/components/reporte.dart';

class ChildListView extends StatefulWidget {
  const ChildListView({Key? key}) : super(key: key);

  @override
  _ChildListViewState createState() => _ChildListViewState();
}

class _ChildListViewState extends State<ChildListView> {
  late List<Child> _children;
  late List<Child> _filteredChildren;

  @override
  void initState() {
    _children = [
      Child(
          name: 'Alejandro Martínez García',
          imageUrl:
              'https://cdn-icons-png.flaticon.com/512/4290/4290443.png'),
      Child(
          name: 'Sofía Rodríguez Pérez',
          imageUrl:
              'https://cdn-icons-png.flaticon.com/512/4290/4290322.png'),
      Child(
          name: 'Luis Fernando López Hernández',
          imageUrl:
              'https://cdn-icons-png.flaticon.com/512/1149/1149820.png'),
      // Agrega más niños según sea necesario
    ];
    _filteredChildren = _children;
    super.initState();
  }

  void _filterChildren(String query) {
    setState(() {
      _filteredChildren = _children
          .where((child) =>
              child.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: _filterChildren,
            decoration: InputDecoration(
              labelText: 'Buscar niños',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _filteredChildren.length,
            itemBuilder: (context, index) {
              final child = _filteredChildren[index];
              return ChildCard(
                child: child,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChildReportScreen(child: child),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
