// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/constants.dart';

class RegisterForUserPage extends StatelessWidget {
  const RegisterForUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Picture
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
              'Register',
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
                'You are just few steps away, Provide your information below to register.',
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

          // Container that holds the list of things
          Expanded(
            child: CommonWhiteContainer(
              insideTheBox: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormInputWidget(
                    topMargin: 30.0,
                    icon: Icons.email_sharp,
                  ),
                  FormInputWidget(
                    topMargin: 5.0,
                    icon: Icons.supervised_user_circle,
                  ),
                  FormInputWidget(
                    topMargin: 5.0,
                    icon: Icons.lock,
                  ),
                  FormInputWidget(
                    topMargin: 5.0,
                    icon: Icons.lock,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // TODO Add a route to Firbase Server
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(115.0, 20.0, 115.0, 20.0),
                        decoration: BoxDecoration(
                          color: kMainBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Register',
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
                          // TODO Add a route to the Sign in Page
                        },
                        child: Text(
                          ' Sign in',
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

class FormInputWidget extends StatelessWidget {
  FormInputWidget({@required this.icon, required this.topMargin});

  final IconData? icon;
  double topMargin = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.fromLTRB(15.0, topMargin, 10.0, 0.0),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: kPreferedGreyColor,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        children: [
          // Icon
          Icon(
            icon,
            color: kMainBackgroundColor,
            size: 30.0,
          ),
          // TextField
          Text('Hello World'),
        ],
      ),
    );
  }
}

class CommonWhiteContainer extends StatelessWidget {
  CommonWhiteContainer({@required this.insideTheBox});

  final Widget? insideTheBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: insideTheBox,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
        ),
      ),
    );
  }
}
