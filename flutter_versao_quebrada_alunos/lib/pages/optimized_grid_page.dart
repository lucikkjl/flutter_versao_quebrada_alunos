import 'package:flutter/material.dart';

class OptimizedGridPage extends StatelessWidget {
  const OptimizedGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid'), 
        backgroundColor:Color.fromARGB(255, 255, 124, 168),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 200,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            color: Color.fromARGB(255, 255, 124, 168),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://picsum.photos/800/600?random=$index',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Item $index', style: const TextStyle(color: Colors.white)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}