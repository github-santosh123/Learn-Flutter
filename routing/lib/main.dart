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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Santosh'),
            accountEmail: Text('san@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black26,
              child: Text('S'),
            ),
            decoration: BoxDecoration(color: Colors.orange),
          ),
          ListTile(
            title: const Text('Page 1'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => op('page1'))),
          ),
          ListTile(
            title: const Text('Page 2'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => op('page2'))),
          ),
          ListTile(
            title: const Text('Close'),
            trailing: const Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }

  op(String s) {}
}
