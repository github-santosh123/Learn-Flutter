import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> items = [];

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Array of widget",
      // ignore: unnecessary_new
      home: new Scaffold(
        appBar: AppBar(
          title: const Text("Array widget"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("item no. : $index"),
              trailing: const Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}
