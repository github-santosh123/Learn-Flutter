import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int radiovalue = 0;
  void method1(val) {
    setState(() {
      radiovalue = val;
      debugPrint("$radiovalue");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Radio(
          value: 1,
          groupValue: radiovalue,
          onChanged: (int? change) {
            method1(change);
          },
        ),
        Radio(
          value: 1,
          groupValue: radiovalue,
          onChanged: (int? change) {
            method1(change);
          },
        ),
        Radio(
          value: 1,
          groupValue: radiovalue,
          onChanged: (int? change) {
            method1(change);
          },
        ),
      ]),
    );
  }
}
