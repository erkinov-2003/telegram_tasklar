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
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Conteiners(color: Colors.redAccent, iconColors: Colors.red),
                SizedBox(
                  height: 10,
                ),
                Conteiners(color: Colors.greenAccent, iconColors: Colors.green),
                SizedBox(
                  height: 10,
                ),
                Conteiners(
                    color: Colors.orangeAccent, iconColors: Colors.orange),
                SizedBox(
                  height: 10,
                ),
                Conteiners(
                    color: Colors.indigoAccent, iconColors: Colors.indigo),
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
      height: 70,
      width: 70,
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
