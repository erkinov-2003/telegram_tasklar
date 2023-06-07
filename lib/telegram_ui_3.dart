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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "AppName",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ColoredBox(
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.photo),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        r"Resturent Name",
                        style: TextStyle(
                          fontSize: 25,
                          height: 2,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                          fontSize: 13,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ColoredBox(
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.photo),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Resturent Name",
                        style: TextStyle(
                          fontSize: 25,
                          height: 2,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                          fontSize: 13,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
