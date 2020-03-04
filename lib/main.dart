import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColorWidget();
  }
}

class ColorWidget extends StatefulWidget {
  @override
  ColorWidgetState createState() => ColorWidgetState();
}

class ColorWidgetState extends State<ColorWidget> {
  Color mainColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            title: Text('Tap the screen'),
          ),
          body: Stack(
            children: <Widget>[
              GestureDetector(
                behavior: HitTestBehavior.translucent, //or HitTestBehavior.opaque
                onTap: () {
                  setState(() {
                    mainColor = Color.fromRGBO(Random().nextInt(255),
                        Random().nextInt(255), Random().nextInt(255), 1);
                  });
                },
                child: Center(
                  child: Text('Hey there', style: TextStyle(fontSize: 32.0)),
                ),
              ),
            ],
          ),
        ));
  }
}