import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text('Dicee'), backgroundColor: Colors.red),
        body: DicePage(),
      ),
    ),
  );
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void changeDiceFace() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('assets/images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('assets/images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DicePageState();
}
