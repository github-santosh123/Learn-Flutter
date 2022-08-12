import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Application001",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Application001"),
            bottom: TabBar(controller: controller, tabs: const [
              Tab(
                text: "TAB 1",
              ),
              Tab(
                text: "TAB 2",
              ),
              Tab(
                text: "TAB 3",
              ),
            ]),
            backgroundColor: Colors.deepOrange,
          ),
          bottomNavigationBar: Material(
            color: Colors.deepOrange,
            child: TabBar(controller: controller, tabs: const [
              Tab(
                text: "TAB 1",
              ),
              Tab(
                text: "TAB 2",
              ),
              Tab(
                text: "TAB 3",
              ),
            ]),
          ),
          body: TabBarView(
            controller: controller,
            children: const <Widget>[
              Center(
                child: Text("Tab1 View 1"),
              ),
              Center(
                child: Text("Tab1 View 2"),
              ),
              Center(
                child: Text("Tab1 View 3"),
              ),
            ],
          ),
        ));
  }
}
