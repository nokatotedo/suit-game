import 'dart:math';
import 'package:flutter/material.dart';

class SuitJepang extends StatelessWidget {
  const SuitJepang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 220, 173),
        appBar: AppBar(
            title: const Text("Suit Jepang"),
            backgroundColor: const Color.fromARGB(255, 215, 144, 84)),
        body: const Jepang());
  }
}

class Jepang extends StatefulWidget {
  const Jepang({Key? key}) : super(key: key);

  @override
  State<Jepang> createState() => _JepangState();
}

class _JepangState extends State<Jepang> {
  String mySuit = "assets/batu.png";
  String yourSuit = "assets/batu.png";
  int skor = 0;
  String stringSkor = "0";
  AssetImage showMySuit = const AssetImage("assets/batu.png");
  AssetImage showYourSuit = const AssetImage("assets/batu.png");
  Random random = Random();

  void updateSuit(int i) {
    setState(() {
      if (i == 1) {
        mySuit = "assets/batu.png";
      } else if (i == 2) {
        mySuit = "assets/gunting.png";
      } else if (i == 3) {
        mySuit = "assets/kertas.png";
      }
      showMySuit = AssetImage(mySuit);

      var randomNumber = 1 + random.nextInt(3);
      if (randomNumber == 1) {
        yourSuit = "assets/batu.png";
      } else if (randomNumber == 2) {
        yourSuit = "assets/gunting.png";
      } else if (randomNumber == 3) {
        yourSuit = "assets/kertas.png";
      }
      showYourSuit = AssetImage(yourSuit);

      if ((i == 1) && (randomNumber == 1)) {
        skor = skor;
      } else if ((i == 1) && (randomNumber == 2)) {
        skor = skor + 1;
      } else if ((i == 1) && (randomNumber == 3)) {
        skor = skor - 1;
      } else if ((i == 2) && (randomNumber == 1)) {
        skor = skor - 1;
      } else if ((i == 2) && (randomNumber == 2)) {
        skor = skor;
      } else if ((i == 2) && (randomNumber == 3)) {
        skor = skor + 1;
      } else if ((i == 3) && (randomNumber == 1)) {
        skor = skor + 1;
      } else if ((i == 3) && (randomNumber == 2)) {
        skor = skor - 1;
      } else if ((i == 3) && (randomNumber == 3)) {
        skor = skor;
      }
      stringSkor = skor.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Text("Skor : ",
                  style: TextStyle(fontFamily: 'Gothamic', fontSize: 20))),
          Text(stringSkor,
              style: const TextStyle(fontFamily: 'Gothamic', fontSize: 20))
        ]),
        Container(
            height: 150,
            margin: const EdgeInsets.only(bottom: 100, top: 30),
            child: Image(image: showYourSuit)),
        Container(
            height: 150,
            margin: const EdgeInsets.only(bottom: 30),
            child: Image(image: showMySuit)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              color: const Color.fromARGB(255, 253, 186, 118),
              margin: const EdgeInsets.only(right: 10),
              width: 100,
              child: TextButton(
                  onPressed: () {
                    updateSuit(1);
                  },
                  child: const Text("Batu",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Gothamic')))),
          Container(
              color: const Color.fromARGB(255, 253, 186, 118),
              margin: const EdgeInsets.only(right: 10),
              width: 100,
              child: TextButton(
                  onPressed: () {
                    updateSuit(2);
                  },
                  child: const Text("Gunting",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Gothamic')))),
          Container(
              color: const Color.fromARGB(255, 253, 186, 118),
              width: 100,
              child: TextButton(
                  onPressed: () {
                    updateSuit(3);
                  },
                  child: const Text("Kertas",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Gothamic'))))
        ])
      ])
    ]);
  }
}
