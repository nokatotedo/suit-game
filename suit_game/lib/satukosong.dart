import 'dart:math';
import 'package:flutter/material.dart';

class SuitSatuKosong extends StatelessWidget {
  const SuitSatuKosong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 220, 173),
        appBar: AppBar(
            title: const Text("Suit Satu Kosong"),
            backgroundColor: const Color.fromARGB(255, 215, 144, 84)),
        body: const SatuKosong());
  }
}

class SatuKosong extends StatefulWidget {
  const SatuKosong({Key? key}) : super(key: key);

  @override
  State<SatuKosong> createState() => _SatuKosongState();
}

class _SatuKosongState extends State<SatuKosong> {
  String myFirstSuit = "assets/batu.png";
  String mySecondSuit = "assets/batu.png";
  String yourFirstSuit = "assets/batu.png";
  String yourSecondSuit = "assets/batu.png";
  String hasil = "Mulai bermain!";
  AssetImage showMyFirstSuit = const AssetImage("assets/batu.png");
  AssetImage showMySecondSuit = const AssetImage("assets/batu.png");
  AssetImage showYourFirstSuit = const AssetImage("assets/batu.png");
  AssetImage showYourSecondSuit = const AssetImage("assets/batu.png");
  Random random = Random();
  int myDegree1 = 0;
  int myDegree2 = 0;
  int yourDegree1 = 0;
  int yourDegree2 = 0;
  double myScale1 = 1;
  double myScale2 = -1;
  double yourScale1 = 1;
  double yourScale2 = -1;
  double myAngle1 = 90 * pi / 180;
  double myAngle2 = 90 * pi / 180;
  double yourAngle1 = 90 * pi / 180;
  double yourAngle2 = 90 * pi / 180;
  double yourHeight1 = 150;
  double yourHeight2 = 150;
  double myHeight1 = 150;
  double myHeight2 = 150;
  String jumlahPoin = "0";
  String dropDownValue = "0";
  var items = ['0', '1', '2', '3', '4'];

  void getData(data) {
    jumlahPoin = data;
  }

  void updateSuit(int i) {
    setState(() {
      if (i == 0) {
        myDegree1 = 90;
        myDegree2 = 90;
        myHeight1 = 150;
        myHeight2 = 150;
        myScale1 = 1;
        myScale2 = -1;
        myFirstSuit = "assets/batu.png";
        mySecondSuit = "assets/batu.png";
      } else if (i == 1) {
        myDegree1 = 180;
        myDegree2 = 90;
        myHeight1 = 180;
        myHeight2 = 150;
        myScale1 = -1;
        myScale2 = -1;
        myFirstSuit = "assets/poin.png";
        mySecondSuit = "assets/batu.png";
      } else if (i == 2) {
        myDegree1 = 180;
        myDegree2 = 0;
        myHeight1 = 180;
        myHeight2 = 180;
        myScale1 = -1;
        myScale2 = 1;
        myFirstSuit = "assets/poin.png";
        mySecondSuit = "assets/poin.png";
      }
      myAngle1 = myDegree1 * pi / 180;
      myAngle2 = myDegree2 * pi / 180;
      showMyFirstSuit = AssetImage(myFirstSuit);
      showMySecondSuit = AssetImage(mySecondSuit);

      var randomNumber = random.nextInt(3);
      if (randomNumber == 0) {
        yourDegree1 = 90;
        yourDegree2 = 90;
        yourHeight1 = 150;
        yourHeight2 = 150;
        yourScale1 = 1;
        yourScale2 = -1;
        yourFirstSuit = "assets/batu.png";
        yourSecondSuit = "assets/batu.png";
      } else if (randomNumber == 1) {
        yourDegree1 = 180;
        yourDegree2 = 90;
        yourHeight1 = 180;
        yourHeight2 = 150;
        yourScale1 = -1;
        yourScale2 = -1;
        yourFirstSuit = "assets/poin.png";
        yourSecondSuit = "assets/batu.png";
      } else if (randomNumber == 2) {
        yourDegree1 = 180;
        yourDegree2 = 0;
        yourHeight1 = 180;
        yourHeight2 = 180;
        yourScale1 = -1;
        yourScale2 = 1;
        yourFirstSuit = "assets/poin.png";
        yourSecondSuit = "assets/poin.png";
      }
      yourAngle1 = yourDegree1 * pi / 180;
      yourAngle2 = yourDegree2 * pi / 180;
      showYourFirstSuit = AssetImage(yourFirstSuit);
      showYourSecondSuit = AssetImage(yourSecondSuit);

      var totalPoin = i + randomNumber;
      if (jumlahPoin == totalPoin.toString()) {
        hasil = "Menang";
      } else if (jumlahPoin != totalPoin.toString()) {
        hasil = "Kalah";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(hasil,
            style: const TextStyle(fontFamily: 'Gothamic', fontSize: 20)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: yourHeight1,
              margin: const EdgeInsets.only(top: 30, right: 10),
              child: Transform.rotate(
                  angle: yourAngle1,
                  child: Transform.scale(
                      scaleY: yourScale1,
                      child: Image(image: showYourFirstSuit)))),
          Container(
              height: yourHeight2,
              margin: const EdgeInsets.only(top: 30),
              child: Transform.rotate(
                  angle: yourAngle2,
                  child: Transform.scale(
                      scaleY: yourScale2,
                      child: Image(image: showYourSecondSuit))))
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: myHeight1,
              margin: const EdgeInsets.only(right: 10, top: 100, bottom: 50),
              child: Transform.rotate(
                  angle: myAngle1,
                  child: Transform.scale(
                      scaleY: myScale1, child: Image(image: showMyFirstSuit)))),
          Container(
              height: myHeight2,
              margin: const EdgeInsets.only(top: 100, bottom: 50),
              child: Transform.rotate(
                  angle: myAngle2,
                  child: Transform.scale(
                      scaleY: myScale2, child: Image(image: showMySecondSuit))))
        ]),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 320,
          child: DropdownButton(
              style:
                  const TextStyle(fontFamily: 'Gothamic', color: Colors.black),
              isExpanded: true,
              value: dropDownValue,
              items: items
                  .map((String items) => DropdownMenuItem(
                      value: items, child: Text("Jumlah poin : " + items)))
                  .toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue!;
                });
                getData(newValue);
              }),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              color: const Color.fromARGB(255, 253, 186, 118),
              margin: const EdgeInsets.only(right: 10),
              width: 100,
              child: TextButton(
                  onPressed: () {
                    updateSuit(0);
                  },
                  child: const Text("0",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Gothamic')))),
          Container(
              color: const Color.fromARGB(255, 253, 186, 118),
              margin: const EdgeInsets.only(right: 10),
              width: 100,
              child: TextButton(
                  onPressed: () {
                    updateSuit(1);
                  },
                  child: const Text("1",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Gothamic')))),
          Container(
              color: const Color.fromARGB(255, 253, 186, 118),
              width: 100,
              child: TextButton(
                  onPressed: () {
                    updateSuit(2);
                  },
                  child: const Text("2",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Gothamic'))))
        ])
      ])
    ]);
  }
}
