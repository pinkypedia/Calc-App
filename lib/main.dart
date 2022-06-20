import 'package:flutter/material.dart';
import 'package:magic_calc/home.dart';

void main() {
  runApp(const calcText());
}

class calcText extends StatelessWidget {
  const calcText({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'magic calc',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
