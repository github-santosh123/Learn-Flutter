// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void dialog(BuildContext contex) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Warning',
              style: TextStyle(color: Colors.red),
            ),
            content: const Text(
              'You will die if you press on close button',
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.close, color: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            dialog(context);
          },
          child: const Text('Activate AlertDialog'),
        ),
      ),
    );
  }
}
