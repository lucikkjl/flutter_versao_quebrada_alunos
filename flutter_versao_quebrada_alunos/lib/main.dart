import 'package:flutter/material.dart';
import 'pages/optimized_list_page.dart';
import 'pages/optimized_grid_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Otimizado',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 94, 148),
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 20)),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Versão Otimizada ⋆˚꩜｡')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.list, color: Color.fromARGB(255, 253, 77, 136)),
            title: const Text('Lista Otimizada'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OptimizedListPage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.grid_view, color: Color.fromARGB(255, 253, 77, 136)),
            title: const Text('Grid Otimizado'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OptimizedGridPage()),
            ),
          ),
        ],
      ),
    );
  }
}