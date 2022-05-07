// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  String text = '';

  get kMainBackgroundColor => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 17, 46),
      appBar: AppBar(
        title: Text('what are u thinking...'),
        backgroundColor: Color.fromARGB(255, 11, 17, 46),
        actions: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
              textColor: Colors.white,
              onPressed: () async {
                Navigator.pop(context);
              },
              child: Text('Post'))
        ],
      ),
      body: Container(
        // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        padding: const EdgeInsets.all(8.0),

        child: Form(
          child: TextFormField(
            onChanged: (val) {
              setState(() {
                text = val;
              });
            },
          ),
        ),
      ),
    );
  }
}
