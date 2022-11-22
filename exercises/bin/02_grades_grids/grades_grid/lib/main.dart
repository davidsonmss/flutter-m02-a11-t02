import 'package:flutter/material.dart';

void main() {
  runApp(const GradesGrid());
}

class GradesGrid extends StatelessWidget {
  const GradesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          toolbarHeight: 100,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.arrow_drop_up,
                  size: 96,
                  color: Colors.indigo,
                ),
                Icon(
                  Icons.arrow_drop_up,
                  size: 96,
                  color: Colors.indigo,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 64,
                  color: Colors.black,
                ),
                Icon(
                  Icons.arrow_downward_rounded,
                  size: 64,
                  color: Colors.black,
                ),
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 64,
                  color: Colors.black,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(35),
              color: Colors.red,
              child: GridView.count(
                crossAxisCount: 6,
                mainAxisSpacing: 2,
                shrinkWrap: true,
                childAspectRatio: 0.9,
                crossAxisSpacing: 2,
                children: List.generate(
                  12,
                  (index) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      color: Colors.amber.shade100,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Container(
                color: Colors.purple,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
