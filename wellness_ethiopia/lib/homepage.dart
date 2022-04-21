// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color.fromARGB(255, 9, 53, 148),
          size: 30,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color.fromARGB(255, 9, 53, 148),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Color.fromARGB(75, 255, 255, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Color.fromARGB(75, 255, 255, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Color.fromARGB(75, 255, 255, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Color.fromARGB(75, 255, 255, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Color.fromARGB(75, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
