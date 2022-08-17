import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double svalue = 3.0;
  void method1(val) {
    setState(() {
      svalue = val;
      debugPrint('$svalue');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Slider(
        value: svalue,
        min: 1.0,
        max: 10.0,
        onChanged: (double? value) {
          method1(value);
        },
      )),
    );
  }
}
