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
  final List<int> _items = [];

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) {
              return cards(index);
            }));
  }
}

Widget cards(val) {
  return Card(
    color: Colors.blue,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text('$val'),
    ),
  );
}
