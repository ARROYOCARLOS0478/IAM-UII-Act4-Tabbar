import 'package:flutter/material.dart';
import 'mis_paginas_tab/restaurante_page.dart';
import 'mis_paginas_tab/supermercado_page.dart';
import 'mis_paginas_tab/licor_page.dart';
import 'mis_paginas_tab/farmacia_page.dart';
import 'mis_paginas_tab/mascota_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rappi Carlos',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFFFF441F),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF441F)),
      ),
      // Rutas nombradas (opcional si usas el index, pero útil para escalabilidad)
      routes: {
        '/restaurante': (context) => const RestaurantePage(),
        '/supermercado': (context) => const SupermercadoPage(),
        '/licor': (context) => const LicorPage(),
        '/farmacia': (context) => const FarmaciaPage(),
        '/mascota': (context) => const MascotaPage(),
      },
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Lista de las páginas importadas
  final List<Widget> _pages = [
    const RestaurantePage(),
    const SupermercadoPage(),
    const LicorPage(),
    const FarmaciaPage(),
    const MascotaPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rappi Carlos', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFFF441F),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Necesario para 5 items
        selectedItemColor: const Color(0xFFFF441F),
        unselectedItemColor: const Color.fromARGB(255, 95, 95, 95),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Rest.'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: 'Súper'),
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: 'Licores'),
          BottomNavigationBarItem(icon: Icon(Icons.local_pharmacy), label: 'Farma'),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Mascotas'),
        ],
      ),
    );
  }
}