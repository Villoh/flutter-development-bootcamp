import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: const Center(
            child: Text(
                'I Am Poor',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/images/poor-homeless.png'),
          ),
        ),
      ),
    ),
  );
}