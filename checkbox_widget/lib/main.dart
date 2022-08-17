import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool checkvalue = false;
  void method1(val) {
    setState(() {
      checkvalue = val;
      debugPrint('$checkvalue');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Checkbox(
        value: checkvalue,
        onChanged: (bool? checkbool) {
          method1(checkbool);
        },
      ),
    ));
  }
}
