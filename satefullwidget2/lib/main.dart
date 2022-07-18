import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String txt = '';

  @override
  void initState() {
    txt = 'click onthis button ';
    super.initState();
  }

  void method1() {
    setState(() {
      txt = 'The text is Changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: RaisedButton(
          onPressed: () {
            method1();
          },
          child: Text(txt),
        )),
      ),
    );
  }
}
