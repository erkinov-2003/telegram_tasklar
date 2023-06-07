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
                child: const Icon(
                  Icons.photo,
                  color: Colors.grey,
                  size: 70,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Visitors",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const FractionalOffset(0.15, 0.5),
                              child: SizedBox(
                                height: 55,
                                width: 55,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const FractionalOffset(0.3, 0.5),
                              child: SizedBox(
                                height: 55,
                                width: 55,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.phone,
                            size: 40,
                          ),
                          Text(
                            "Call",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.telegram,
                            size: 40,
                          ),
                          Text(
                            "Route",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.share,
                            size: 40,
                          ),
                          Text(
                            "Route",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
