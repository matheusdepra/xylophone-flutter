import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildNotes(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildNotes(1, Colors.red),
              buildNotes(2, Colors.orange),
              buildNotes(3, Colors.yellow),
              buildNotes(4, Colors.green),
              buildNotes(5, Colors.teal),
              buildNotes(6, Colors.blue),
              buildNotes(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
