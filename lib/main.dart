import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.red),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var left = 1, right = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 10,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  left = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            flex: 10,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  right = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }
}
