import 'package:flutter/material.dart';

void main() {
  runApp(const DarkMode());
}

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  Color cor1 = const Color.fromARGB(255, 40, 40, 40);
  Color cor2 = const Color.fromARGB(255, 1, 58, 105);
  Color cor3 = const Color.fromARGB(255, 39, 49, 110);
  Color cor4 = const Color.fromARGB(255, 3, 57, 101);
  Color cor5 = const Color.fromARGB(255, 238, 237, 237);
  int selecionado = -1;
  bool darkMode = true;

  List icones = [
    Icons.lightbulb_outline_rounded,
    Icons.thermostat_rounded,
    Icons.water,
    Icons.security_rounded,
    Icons.wifi,
    Icons.tv_rounded,
  ];

  List funcoes = [
    'Luzes',
    'Temperatura',
    'Lavadora',
    'Segurança',
    'WiFi',
    'Televisor',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                cor1,
                cor2,
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.home_outlined,
                    size: 64,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Text(
                        'SWEET HOME',
                        style: TextStyle(
                          fontSize: 32,
                          letterSpacing: 3,
                          color: cor5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'O que gostaria de monitorar?',
                        style: TextStyle(
                          color: cor5,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 1.35,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                //
                children: List.generate(
                  6,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selecionado = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: index == selecionado ? cor3 : cor4,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icones[index],
                              color: cor5,
                              size: 48,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              funcoes[index],
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: cor5,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    darkMode ? 'Light Mode' : 'Dark Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: cor5,
                    ),
                  ),
                  Switch(
                      activeColor: cor3,
                      value: darkMode,
                      onChanged: (value) {
                        setState(() {
                          if (darkMode) {
                            cor1 = const Color.fromARGB(255, 238, 237, 237);
                            cor2 = const Color.fromARGB(255, 3, 57, 101);
                            cor3 = const Color.fromARGB(255, 39, 49, 110);
                            cor4 = const Color.fromARGB(255, 1, 58, 105);
                            cor5 = const Color.fromARGB(255, 40, 40, 40);
                            darkMode = false;
                          } else {
                            cor1 = const Color.fromARGB(255, 40, 40, 40);
                            cor2 = const Color.fromARGB(255, 1, 58, 105);
                            cor3 = const Color.fromARGB(255, 39, 49, 110);
                            cor4 = const Color.fromARGB(255, 3, 57, 101);
                            cor5 = const Color.fromARGB(255, 238, 237, 237);
                            darkMode = true;
                          }
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
