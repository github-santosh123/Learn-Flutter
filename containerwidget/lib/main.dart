import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: const Text('This is My Container'),
          height: 500.0,
          width: 500.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(color: Colors.green),
          transform: Matrix4.rotationZ(0.5),
          foregroundDecoration: const BoxDecoration(color: Colors.blue),
        ),
      ),
    );
  }
}
