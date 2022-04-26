// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, prefer_const_declarations

import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);
  static final title = 'salomon_bottom_bar';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  // ignore: non_constant_identifier_names
  //Function that creates the containers
  // ignore: non_constant_identifier_names, prefer_final_fields
  var _currentIndex = 0;
  Widget Contain() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Color.fromARGB(66, 235, 232, 232),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 50, 180),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/profile.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

//I WAS TRYYING TO CREATE A CONTAINER THAT WE CAN USE AS AN AN APP BAR BUT THE BUTTON WAS NOT WORKING

  // Widget appBar() {
  //   return SafeArea(
  //     child: Container(
  //       height: 60,
  //       color: Color.fromARGB(218, 19, 54, 167),
  //       child: Padding(
  //         padding: const EdgeInsets.fromLTRB(500, 15, 0, 30),
  //         child: Icon(
  //           Icons.search,
  //           size: 40,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('WELLNESS ETHIOPIA'),
        backgroundColor: Color.fromARGB(197, 21, 44, 119),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 25, 0),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(197, 21, 44, 119),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Color.fromARGB(211, 221, 20, 120),
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.chat),
            title: Text("Chat"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
// ignore: prefer_const_constructors
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.blue,
        ),
      ),
      body: ListView(
        children: [
          //appBar(),
          // ignore: deprecated_member_use

          SizedBox(
            height: 0,
          ),
          Contain(),
          Contain(),
          Contain(),

          Contain(),
        ],
      ),
    );
  }
}
