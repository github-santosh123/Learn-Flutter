import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
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
            accountEmail: Text('santu@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black26,
              child: Text('S'),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          const ListTile(
            title: Text('Page 1'),
            trailing: Icon(Icons.arrow_forward),
          ),
          const ListTile(
            title: Text('Page 2'),
            trailing: Icon(Icons.arrow_forward),
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
}
