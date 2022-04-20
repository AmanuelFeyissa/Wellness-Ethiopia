import 'package:flutter/material.dart';

void main() {
  runApp(wellnessApp());
}

class wellnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.blue,
        primaryColor: Colors.blue,
      ),
      /* wellnessApp() Replace with a current page you are working on and
         add your page for test purposes
      */
      home: wellnessApp(),
    );
  }
}
