import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ball());
}

class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    void change() {
      setState(() {
        ballnumber = Random().nextInt(5) + 1;
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade800,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('8 Ball '),
          centerTitle: true,
        ),
        body: Center(
          child: Expanded(
            flex: 1,
            child: IconButton(
              iconSize: 250,
              onPressed: () {
                change();
              },
              icon: Image.asset('images/ball$ballnumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
