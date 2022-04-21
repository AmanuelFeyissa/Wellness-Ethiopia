// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('images/getStartedPic.png')),
          Expanded(child: Image.asset('images/mentalPuzzle.png')),
          Expanded(
            child: Text(
              'Wellness Ethiopia',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'some description',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
