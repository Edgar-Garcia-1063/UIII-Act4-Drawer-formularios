import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: const Text("Home Page"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          // IconButton ya es interactivo, no necesitas el InkWell
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Aquí puedes agregar la funcionalidad de búsqueda
              print('Buscar clickeado');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // Aquí puedes agregar la funcionalidad de configuración
              print('Configuración clickeada');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 52, 196, 184)),
              accountName: Text("Edgar 1063"),
              accountEmail: Text("a.22308051281063@cbtis128.edu.mx"),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "AM",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
            ),
            // No hay opciones aquí, solo el encabezado de la cuenta
          ],
        ),
      ),
      body: const Center(
        child: Text('Bienvenido a la HomePage'),
      ),
    );
  }
}
