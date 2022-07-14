// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(const Framework());
}

class Framework extends StatelessWidget {
  const Framework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'statelesss widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.amber,
          child: new Container(
            color: Colors.red,
            margin: const EdgeInsets.all(30),
            child: new Container(
              color: Colors.pink,
              margin: const EdgeInsets.all(30),
              child: new Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(30),
                child: new Container(
                  color: Colors.green,
                  margin: const EdgeInsets.all(30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
