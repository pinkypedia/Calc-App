// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyHomePage> {
  String calcText = "0";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff22252D),
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: size.height / 15,
              padding: const EdgeInsets.only(right: 20.0),
              // this is for the display text area.... color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    calcText,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: size.height / 2.0,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 48, 49, 53),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("AC", Colors.blue),
                    blocks("CC", Colors.blue),
                    blocks("%", Colors.blue),
                    blocks("/", Colors.red),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("1"),
                    blocks("2"),
                    blocks("3"),
                    blocks("X", Colors.yellow),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          // print("4");
                          setState(() {
                            calcText = (int.parse(calcText) + int.parse("4")).toString();
                            print(calcText);
                          });
                        },
                        child: blocks("4")),
                    blocks("5"),
                    blocks("6"),
                    blocks("-", Colors.green),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("7"),
                    blocks("8"),
                    blocks("9"),
                    blocks("+", Colors.pink),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks(":"),
                    blocks("0"),
                    blocks("."),
                    blocks("=", Colors.purpleAccent),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget blocks(String text, [Color? color]) {
    return Padding(
      // padding: const EdgeInsets.all(1),
      padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
      child: Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(
          color: Color(
            0xff22252D,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: color ?? Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
