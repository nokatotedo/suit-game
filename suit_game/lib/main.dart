import 'package:flutter/material.dart';

void main() {
  runApp(const SuitApp());
}

class SuitApp extends StatelessWidget {
  const SuitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Suit Game Web",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 220, 173),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: const Image(
                  image: AssetImage("assets/judul.png"),
                  height: 100
                )
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: TextButton(
                  onPressed: () {},
                  child: const Image(
                    image: AssetImage("assets/suitjepang.png"),
                    height: 150
                  )
                )
              ),
              TextButton(
                onPressed: () {},
                child: const Image(
                  image: AssetImage("assets/suitsatukosong.png"),
                  height: 150
                )
              )
            ]
          )
        )
      )
    );
  }
}