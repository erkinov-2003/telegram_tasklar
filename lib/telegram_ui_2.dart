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
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ColoredBox(
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.indigo.shade300,
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                     const Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w800),
                      ),
                     const Text(
                        "email",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: ColoredBox(
              color: Colors.white38,
            ),
          ),
        ],
      ),
    );
  }
}
