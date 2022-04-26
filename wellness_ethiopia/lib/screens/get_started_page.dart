// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/screens/signup_page.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                // height: 200.0,
                // width: 200.0,
                margin: EdgeInsets.only(top: 60.0, bottom: 10.0),
                child: Image.asset('images/getStartedPic.png'),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 280.0,
            child: Divider(color: Colors.white),
          ),
          Center(
            child: Container(
              height: 100.0,
              width: 100.0,
              child: Image.asset('images/mentalPuzzle.png'),
            ),
          ),
          Center(
            child: Text(
              'Wellness Ethiopia',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                'The best mobile app to get help and communicate about your mental health, \nClick on the button below to get started.',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                  // TODO Add a route to the next page
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Get Started',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
