import 'package:flutter/material.dart';


class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Perfil',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              // Acción al presionar el botón de la cámara
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/2883/2883841.png'),
                      radius: 100,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: () {
                          // Acción al presionar el botón de la cámara
                        },
                        child: const Icon(
                          Icons.camera_alt,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: const [
                      ListTile(
                        title: Text('Nombre', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('Juan Pérez'),
                      ),
                      ListTile(
                        title: Text('Institución', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('Universidad del Mayab'),
                      ),
                      ListTile(
                        title: Text('Correo electrónico', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('juan.perez@example.com'),
                      ),
                      
                      ListTile(
                        title: Text('Grado', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('1'),
                      ),
                      ListTile(
                        title: Text('Grupo', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('B'),
                      ),
                     
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Acción al presionar el botón de logout
                },
                icon: const Icon(Icons.logout, size: 24, color: Colors.white,),
                label: const Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white) ,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
