import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int image = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
              child: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 24),
          )),
          elevation: 0,
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                  image = Random().nextInt(5) + 1;
              });
            
            },
            child: Image.asset('images/ball$image.png'),
          ),
        ),
      ),
    );
  }
}
