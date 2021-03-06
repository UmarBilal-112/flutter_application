import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
  theme:
  ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: xylo(),
));

class xylo extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<xylo> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => xylophone())));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.orangeAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 100.0,
                        child: Icon(
                          Icons.android,
                          color: Colors.orangeAccent,
                          size: 100.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                      ),
                      Text(
                        "Flutter Xylophone App",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Xylophone Splash Screen",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.tealAccent),
                        strokeWidth: 5.0,
                        //backgroundColor: Colors.redAccent,
                      ),
                      height: 70.0,
                      width: 70.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                    ),
                    Text(
                      "Welcome\nEveryone \nTo Xylophone App",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  void playAudio(String fileName) {
    final players = AudioCache();
    players.play('note$fileName.wav');
  }

  Expanded customWidget(Color color, String fileName) {
    return Expanded(
      child: Container(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            playAudio(fileName);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        customWidget(Colors.cyanAccent, "1"),
        customWidget(Colors.purple, "2"),
        customWidget(Colors.green, "3"),
        customWidget(Colors.blue, "4"),
        customWidget(Colors.cyan, "5"),
        customWidget(Colors.yellow, "6"),
        customWidget(Colors.black38, "7"),
      ],
    );
  }
}