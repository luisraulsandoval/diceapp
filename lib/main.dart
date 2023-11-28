import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int d1 = Random().nextInt(6) + 1;
  int d2 = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: (AppBar(
          title: Text("DiceApp"),
          centerTitle: true,
          elevation: 20.0,
          backgroundColor: Colors.redAccent)),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    d1 = Random().nextInt(6) + 1;
                    setState(() {});
                  },
                  child: Image.asset("assets/images/dice$d1.png")),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    d2 = Random().nextInt(6) + 1;
                    setState(() {});
                  },
                  child: Image.asset("assets/images/dice$d2.png")),
            ),
          ],
        ),
      ),
    );
  }
}
