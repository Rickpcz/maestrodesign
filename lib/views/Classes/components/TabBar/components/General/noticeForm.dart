import 'package:flutter/material.dart';
import 'package:maestro/views/Classes/components/TabBar/components/General/createNotice.dart';

class CreateNoticeScreen extends StatefulWidget {
  const CreateNoticeScreen({Key? key}) : super(key: key);

  @override
  State<CreateNoticeScreen> createState() => _CreateNoticeScreenState();
}

class _CreateNoticeScreenState extends State<CreateNoticeScreen> {
  String? title;
  String? subtitle;
  String? description;
  String? img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo aviso'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => CreateNewNoticie(
                    title: title ?? '',
                    subtitle: subtitle ?? '',
                    description: description ?? '',
                    img: img ?? 'https://cdn-icons-png.flaticon.com/512/6269/6269251.png',
                  ),
                ),
              );
            },
            icon: const Icon(Icons.send, color: const Color(0xFF60A9CD),),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Título:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  title = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Ingrese el título del aviso',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Subtítulo:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  subtitle = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Ingrese el subtítulo del aviso',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Descripción:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
                maxLines: null, // Permite múltiples líneas de texto
                decoration: const InputDecoration(
                  hintText: 'Ingrese la descripción del aviso',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Agregar lógica para subir imagen aquí
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt, color: Color(0xFF60A9CD),),
                  SizedBox(width: 10),
                  Text('Subir imagen', style: TextStyle(color: Color(0xFF60A9CD)),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
