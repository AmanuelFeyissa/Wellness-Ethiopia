// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/screens/get_started_page.dart';
import 'package:wellness_ethiopia/screens/home_screen.dart';
import 'package:wellness_ethiopia/screens/register_for_pro_page.dart';
import 'package:wellness_ethiopia/screens/register_for_user_page.dart';
import 'package:wellness_ethiopia/screens/signin_page.dart';
import 'package:wellness_ethiopia/screens/signup_page.dart';

void main() {
  runApp(WellnessApp());
}

class WellnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF242BCB),
        primaryColor: Color(0xFF242BCB),
      ),
      /* home: Replace with a current page you are working on and
         add your page for test purposes
      */
      home: SignInPage(),
    );
  }
}
