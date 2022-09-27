import 'package:flutter/material.dart';

//import 'package:english_words/english_words.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget pianoKey(int int, Color color) {
    return TextButton(
      onPressed: () {
        final assetsAudioPlayer = AssetsAudioPlayer();
        assetsAudioPlayer.open(
          Audio('assets/note$int.wav'),
        );
      },
      child: SizedBox(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              pianoKey(1, Colors.red),
              pianoKey(2, Colors.orange),
              pianoKey(3, Colors.yellow),
              pianoKey(4, Colors.green),
              pianoKey(5, Colors.blue),
              pianoKey(6, Colors.cyan),
              pianoKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
