
import 'package:flutter/material.dart';

class MascotaPage extends StatelessWidget {
  const MascotaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // 1. Envolvemos la columna en un Center para centrar todo el contenido
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 2. Centramos verticalmente dentro de la columna
          crossAxisAlignment: CrossAxisAlignment.center, // 3. Centramos horizontalmente dentro de la columna
          children: [
            // Contenedor para el tamaño y los bordes redondeados
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // 4. Bordes redondeados
              child: Container(
                height: 300, // 5. Altura fija
                width: 300,  // 6. Ancho fijo para mantener la proporción redonda
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), // Opcional: Borde sutil
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  'https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/Mascota.jfif',
                  fit: BoxFit.contain, // 7. Imagen completa (sin recortes)
                ),
              ),
            ),
            const SizedBox(height: 20), // Espacio entre imagen y texto
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Todo para mascotas", // Cambiado para que coincida con la imagen
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Centrar el texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}