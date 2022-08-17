import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool swvalue = false;
  void method2(val) {
    setState(() {
      swvalue = val;
      debugPrint('$swvalue');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: swvalue,
          onChanged: (bool? swbool) {
            method2(swbool);
          },
        ),
      ),
    );
  }
}
