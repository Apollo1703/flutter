import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tambah() {
    setState(() {
      number++;
    });
  }

  void kurang() {
    setState(() {
      number--;
      if (number < 0) {
        number = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Penghitubg"),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(child: Text("+"), onPressed: tambah),
            Padding(padding: EdgeInsets.all(10)),
            Text(number.toString()),
            Padding(padding: EdgeInsets.all(10)),
            RaisedButton(child: Text("-"), onPressed: kurang),
          ],
        )),
      ),
    );
  }
}
