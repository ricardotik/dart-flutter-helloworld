import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var displayText = '0';
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Calculator'),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Text(
              displayText,
              style: TextStyle(fontSize: 72),
              textAlign: TextAlign.right,
            ),
            Container(
                child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '9',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '6',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '3',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: 'C',
                    ),
                  ],
                ),
              ],
            ))
          ],
        )),
      ),
    );
  }
}

class Keypad extends StatelessWidget {
  final String displayText;
  Keypad({@required this.displayText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Center(
          child: Text(
        displayText,
        style: TextStyle(fontSize: 36),
      )),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(32),
      color: Colors.blue,
    );
  }
}
