import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8',
      home: BallPage()
    );
  }
}

class BallPage extends StatelessWidget{
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ball(),
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Ask Me Anything"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 22
        ),
      )
    );
  }
}

class Ball extends StatefulWidget{
  const Ball({super.key});

  @override
  State<StatefulWidget> createState() => _BallState();
}

class _BallState extends State<Ball>{
  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: changeBall,
          child: Image.asset('assets/images/ball$ballNumber.png')
      ),
    );
  }

}