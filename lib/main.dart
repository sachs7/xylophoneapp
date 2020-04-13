import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKeyWithColors({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
        child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKeyWithColors(noteNumber: 1, color: Colors.red),
                SizedBox(
                  height: 10.0,
                ),
                buildKeyWithColors(noteNumber: 2, color: Colors.green),
                SizedBox(
                  height: 10.0,
                ),
                buildKeyWithColors(noteNumber: 3, color: Colors.blue),
                SizedBox(
                  height: 10.0,
                ),
                buildKeyWithColors(noteNumber: 4, color: Colors.purple),
                SizedBox(
                  height: 10.0,
                ),
                buildKeyWithColors(noteNumber: 5, color: Colors.orange),
                SizedBox(
                  height: 10.0,
                ),
                buildKeyWithColors(noteNumber: 6, color: Colors.yellow),
                SizedBox(
                  height: 10.0,
                ),
                buildKeyWithColors(noteNumber: 7, color: Colors.teal)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void playSound(int noteNumber) {
  final player = AudioCache();
  player.play('note$noteNumber.wav');
}
