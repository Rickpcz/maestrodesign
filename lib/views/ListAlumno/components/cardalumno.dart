import 'package:flutter/material.dart';
import 'package:maestro/views/ListAlumno/components/alumno.dart';

class ChildCard extends StatelessWidget {
  final Child child;
  final VoidCallback? press;

  const ChildCard({Key? key, required this.child, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(child.imageUrl),
          ),
          title: Text(child.name),
        ),
      ),
    );
  }
}
