import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My application',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Row And column'),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This '),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('This'),
                  Text(' is '),
                  Text('Column'),
                ],
              ),
              const Text('Row'),
            ],
          )),
    );
  }
}
