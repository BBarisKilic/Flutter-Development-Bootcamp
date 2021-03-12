import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.wav',
        mode: PlayerMode.LOW_LATENCY, stayAwake: false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                note(Colors.blue, 1, 'C'),
                note(Colors.teal, 2, 'D'),
                note(Colors.yellow, 3, 'E'),
                note(Colors.orange, 4, 'F'),
                note(Colors.red, 5, 'G'),
                note(Colors.purple, 6, 'A'),
                note(Colors.white, 7, 'B'),
                note(Colors.blue, 8, 'C'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget note(Color buttonColor, int soundNumber, String doteName) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
        ),
        child: RotatedBox(
          quarterTurns: 1,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              doteName,
              style: TextStyle(color: Colors.grey.shade800, fontSize: 26),
            ),
          ),
        ),
      ),
    );
  }
}
