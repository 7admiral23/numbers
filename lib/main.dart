import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void numberSound(int number) {
    AssetsAudioPlayer.playAndForget(Audio('assets/number_$number.wav'));
  }

  Widget numberCard(int number, Color colorNumber) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            AssetsAudioPlayer.playAndForget(Audio('assets/number_$number.wav'));
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorNumber)),
          child: Text(
            '$number',
            style: TextStyle(color: Colors.white, fontSize: 72),
          )),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                numberCard(0, Colors.red),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      numberCard(1, Colors.black),
                      numberCard(2, Colors.limeAccent),
                      numberCard(3, Colors.lime),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      numberCard(4, Colors.blue),
                      numberCard(5, Colors.yellow),
                      numberCard(6, Colors.cyan),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      numberCard(7, Colors.red),
                      numberCard(8, Colors.grey),
                      numberCard(9, Colors.indigoAccent),
                    ],
                  ),
                ),
                numberCard(10, Colors.deepPurple),
              ]),
        ),
      ),
    );
  }
}
