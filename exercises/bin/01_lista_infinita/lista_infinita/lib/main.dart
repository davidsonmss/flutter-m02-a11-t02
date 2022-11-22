import 'package:flutter/material.dart';

void main() {
  runApp(const ListaInfinita());
}

class ListaInfinita extends StatelessWidget {
  const ListaInfinita({super.key});

  final int infinito = 1000;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 51, 250, 154),
          centerTitle: true,
          title: Text(
            'Lista "Infinita"',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: infinito,
            itemBuilder: (context, index) {
              return Container(
                color: const Color.fromARGB(255, 243, 232, 232),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: const Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                    size: 32,
                  ),
                  title: Text(
                    'Item N°: ${index + 1}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 24,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
