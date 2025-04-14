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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
              onPressed: () {
                Image.asset('assets/images/dice${Random().nextInt(6) + 1}.png');
              },
              child: Image.asset('assets/images/dice1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
              onPressed: () {},
              child: Image.asset('assets/images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
