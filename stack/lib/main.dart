import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: const <Widget>[
        Card(
            color: Colors.pink,
            child: Padding(
              padding: EdgeInsets.all(200.0),
            )),
        Card(
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.all(100.0),
            )),
        Card(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(50.0),
            )),
        Card(
            color: Colors.yellow,
            child: Padding(
              padding: EdgeInsets.all(10.0),
            )),
        Card(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(5.0),
            )),
        Card(
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(1.0),
            )),
      ],
    ));
  }
}
