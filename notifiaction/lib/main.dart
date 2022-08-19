import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  void _method1() {
    _scaffoldkey.currentState!.showSnackBar(
      const SnackBar(
        content: Text('Activated Snackbar'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _method1();
          },
          child: const Text('Activate Snackbar'),
        ),
      ),
    );
  }
}
