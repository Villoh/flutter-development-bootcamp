import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

/// The main Xylophone application widget.
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  /// Plays a note using the [AudioPlayer] when a button is pressed.
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('audio/note$soundNumber.wav'));
  }

  /// Returns a widget that builds a colored key (button) for the xylophone.
  ///
  /// [soundNumber] indicates the audio file to play, and
  /// [color] defines the background of the key.
  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const SizedBox.shrink(), // No label
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.red),
              buildKey(soundNumber: 2, color: Colors.orange),
              buildKey(soundNumber: 3, color: Colors.yellow),
              buildKey(soundNumber: 4, color: Colors.green),
              buildKey(soundNumber: 5, color: Colors.teal),
              buildKey(soundNumber: 6, color: Colors.blue),
              buildKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
