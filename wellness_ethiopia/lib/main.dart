// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(WellnessApp());
}

class WellnessApp extends StatelessWidget {
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
      home: WellnessApp(),
    );
  }
}
