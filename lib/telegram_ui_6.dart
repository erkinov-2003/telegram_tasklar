import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplacation());
}

class MyApplacation extends StatelessWidget {
  const MyApplacation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tasklar",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 300,
                    width: 100,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: const [
                        Align(
                          alignment: FractionalOffset(0.5, 0.17),
                          child: Conteiners(
                              color: Colors.redAccent, iconColors: Colors.red),
                        ),
                        Align(
                          alignment: FractionalOffset(0.5, 0.47),
                          child: Conteiners(
                              color: Colors.greenAccent,
                              iconColors: Colors.green),
                        ),
                        Align(
                          alignment: FractionalOffset(0.5, 0.75),
                          child: Conteiners(
                              color: Colors.orangeAccent,
                              iconColors: Colors.orange),
                        ),
                        Align(
                          alignment: FractionalOffset(0.5, 1),
                          child: Conteiners(
                              color: Colors.indigoAccent,
                              iconColors: Colors.indigo),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: const [
                        Align(
                          alignment: FractionalOffset(0.1, 0.7),
                          child: Conteiners(
                              color: Colors.redAccent, iconColors: Colors.red),
                        ),
                        Align(
                          alignment: FractionalOffset(0.4, 0.7),
                          child: Conteiners(
                              color: Colors.greenAccent,
                              iconColors: Colors.green),
                        ),
                        Align(
                          alignment: FractionalOffset(0.7, 0.7),
                          child: Conteiners(
                              color: Colors.orangeAccent,
                              iconColors: Colors.orange),
                        ),
                        Align(
                          alignment: FractionalOffset(1, 0.7),
                          child: Conteiners(
                              color: Colors.indigoAccent,
                              iconColors: Colors.indigo),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Conteiners extends StatelessWidget {
  final Color color;
  final Color iconColors;
  const Conteiners({super.key, required this.color, required this.iconColors});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Icon(
          Icons.person,
          color: iconColors,
        ),
      ),
    );
  }
}
