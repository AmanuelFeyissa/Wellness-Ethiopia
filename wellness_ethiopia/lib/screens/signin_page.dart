// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/utilities/common_white_containers.dart';
import 'package:wellness_ethiopia/utilities/form_input_widget.dart';
import 'package:wellness_ethiopia/constants.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 85.0, bottom: 30.0),
              height: 100.0,
              width: 100.0,
              child: Image.asset('images/mentalPuzzle.png'),
            ),
          ),
          // Register title
          Center(
            child: Text(
              'Sign in',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // description on register
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                'Enter Username and Password to sign in',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          // hr bar
          SizedBox(
            height: 40.0,
            width: 120.0,
            child: Divider(
              color: Colors.white38,
              thickness: 2.0,
            ),
          ),
          Expanded(
            child: CommonWhiteContainer(
              insideTheBox: Column(
                children: [
                  FormInputWidget(
                    icon: Icons.supervised_user_circle,
                    margin: EdgeInsets.fromLTRB(15.0, 70.0, 10.0, 0.0),
                  ),
                  FormInputWidget(
                    margin: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
                    icon: Icons.lock,
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // TODO Add a route to Home Page
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(115.0, 20.0, 115.0, 20.0),
                        decoration: BoxDecoration(
                          color: kMainBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kMainBackgroundColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // TODO Add a route to the Sign up Page
                        },
                        child: Text(
                          ' Sign up',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: kMainBackgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
