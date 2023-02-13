// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

/*void main() {
  runApp(
    XylophoneApp(),
  );
}
*/
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(soundNumber, buttonColor) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(buttonColor)),
          child: Text(''),
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
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}





/*
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.green.shade900)),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple)),
                  child: Text(''),
                ),
              ),
            ],
          ),

*/