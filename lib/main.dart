import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Magic Ball",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Ball8(),
      ),
    ),
  );
}

class Ball8 extends StatefulWidget {
  @override
  _Ball8State createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {
  int ballno = 1;
  void changeBall() {
    setState(() {
      ballno = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeBall();
              },
              child: Image.asset('images/ball$ballno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
