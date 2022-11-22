import 'package:flutter/material.dart';

void main() {
  runApp(const Rainbow());
}

class Rainbow extends StatelessWidget {
  const Rainbow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: const Text(
            'VLAVAAV Horizontal',
            style: TextStyle(
                fontSize: 24, letterSpacing: 2, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            getRainbow(),
            getRainbow(),
            getRainbow(),
            getRainbow(),
          ],
        ),
      ),
    );
  }
}

Row getRainbow() {
  return Row(
    children: [
      Container(
        width: 70,
        color: Colors.redAccent,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Vermelho',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        color: Colors.orange,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Laranja',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        color: Colors.yellow,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Amarelo',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        color: Colors.green,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Verde',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        color: Colors.blue,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Azul',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        color: Colors.indigo,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Anil',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        color: Colors.purple,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Violeta',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
