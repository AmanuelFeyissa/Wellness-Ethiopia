// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/screens/register_for_pro_page.dart';
import 'package:wellness_ethiopia/screens/register_for_user_page.dart';
import 'package:wellness_ethiopia/screens/signin_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 120.0, bottom: 30.0),
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
          SizedBox(
            height: 70.0,
            width: 120.0,
            child: Divider(
              color: Colors.white38,
              thickness: 2.0,
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterForProPage()));
                // TODO Add a route to signup form
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Signup as a Professional',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterForUserPage()));
                // TODO Add a route to signup form
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(78.0, 20.0, 78.0, 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Signup as a User',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Already have an account?',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white54,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInPage()));
              // TODO Add a route to the next page
            },
            child: Text(
              'Sign in',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
