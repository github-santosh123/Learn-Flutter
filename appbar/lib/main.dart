import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
        backgroundColor: Colors.green,
        elevation: 30.0,
        centerTitle: true,
        titleSpacing: 70.0,
        toolbarOpacity: 0.5,
      ),
    );
  }
}
