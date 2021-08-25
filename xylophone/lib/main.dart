import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';

// void main() => runApp(XylophoneApp());

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey[300],
        ),
        body: XylophoneApp(),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  void playSounds(int soundNumber) {
    final player = AudioCache(prefix: 'assets/songs/');
    player.play('note$soundNumber.wav');
  }

  Expanded createLine(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        child: (Text('')),
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSounds(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        createLine(Colors.red, 1),
        createLine(Colors.orange, 2),
        createLine(Colors.yellow, 3),
        createLine(Colors.green, 4),
        createLine(Colors.teal, 5),
        createLine(Colors.blue, 6),
        createLine(Colors.purple, 7),
      ],
    );
  }
}
