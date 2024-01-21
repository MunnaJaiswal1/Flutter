import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: (){
                final player=AudioPlayer();
                String audiopath="sound1.mp3";
                player.play(AssetSource(audiopath));
              },
              child: Text("click here"),
            ),
          ),
        ),
      ),
    );
  }
}




