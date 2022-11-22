import 'package:flutter/material.dart';

void main() {
  runApp(const Hostel());
}

class Hostel extends StatefulWidget {
  const Hostel({super.key});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  Color cor1 = Colors.red;
  Color cor2 = Colors.grey.shade300;
  List selecionado = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
          centerTitle: true,
          title: const Text(
            'ErBienBi - Hospedagens',
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Selecione as datas da sua reserva',
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 7,
                shrinkWrap: true,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: List.generate(31, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        index == setSelecionado(selecionado, index)
                            ? selecionado.remove(index)
                            : selecionado.add(index);
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      color: index == setSelecionado(selecionado, index)
                          ? cor1
                          : cor2,
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: index == setSelecionado(selecionado, index)
                              ? Colors.white
                              : Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              const Text(
                'Dezembro 2022',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  int setSelecionado(List selecionado, int index) {
    return selecionado.contains(index) ? index : -1;
  }
}
