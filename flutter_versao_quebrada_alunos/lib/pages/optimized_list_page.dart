import 'package:flutter/material.dart';

class OptimizedListPage extends StatelessWidget {
  const OptimizedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
        backgroundColor:Color.fromARGB(255, 255, 124, 168),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Image.network('https://picsum.photos/800/600?random=$index'),
                const SizedBox(height: 12),
                Text('Item $index'),
              ],
            ),
          );
        },
      ),
    );
  }
}