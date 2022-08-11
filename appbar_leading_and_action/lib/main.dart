import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mtext = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('AppBar'),
          leading: const Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  mtext = 'YOU PRESSED ARROW BUTTON';
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  mtext = 'YOU PRESSED ADD BUTTON';
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                setState(() {
                  mtext = 'YOU PRESSED CLOSE BUTTON';
                });
              },
            ),
          ]),
    );
  }
}
