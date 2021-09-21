import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
        body: _XylophoneApp(),
      ),
    ),
  );
}

class _XylophoneApp extends StatelessWidget {
  final _player = AudioCache(prefix: 'assets/songs/');

  void _playSounds(int _soundNumber) {
    _player.play('note$_soundNumber.wav');
  }

  Expanded _createLine(Color color, int _soundNumber) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () => _playSounds(_soundNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _createLine(Colors.red, 1),
        _createLine(Colors.orange, 2),
        _createLine(Colors.yellow, 3),
        _createLine(Colors.green, 4),
        _createLine(Colors.teal, 5),
        _createLine(Colors.blue, 6),
        _createLine(Colors.purple, 7),
      ],
    );
  }
}
