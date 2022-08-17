import 'package:flutter/material.dart';

class customw extends StatelessWidget {
  const customw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Container(
        color: Colors.orange,
        margin: const EdgeInsets.all(15.0),
        child: Container(
          color: Colors.green,
          margin: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(15.0),
            child: Container(
                color: Colors.yellow,
                margin: const EdgeInsets.all(15.0),
                child: _methodcustom()),
          ),
        ),
      ),
    );
  }
}

Widget _methodcustom() {
  return Container(
    color: Colors.purple,
    margin: const EdgeInsets.all(15.0),
  );
}
