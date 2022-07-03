import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wellness_ethiopia/screens/login_screen.dart';
import 'package:wellness_ethiopia/screens/signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Welcome to Wellness Ethiopia',
              body:
                  'An app that let\'s your express your feelings and lets you get professional advices',
              image: buildImage('images/mentalPuzzle.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'A Community that is their to help during your tough time',
              body:
                  'Certified Professtionals and members of the community that have dealt with the same problem helping you get better',
              image: buildImage('images/Slide2.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Post what you are feeling so other can read and help',
              body: 'Check the reactions and comments of other members',
              image: buildImage('images/getStartedPic.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Talk to the community by using The Chat Room',
              body: 'Ask Questions and communicate',
              image: buildImage('images/Slide4.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Ready to Get Started?',
              body: 'If you don\'t have an account',
              footer: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              image: buildImage('images/mentalPuzzle.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: const Text(
            'Log in',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onDone: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          showNextButton: true,
          showSkipButton: true,
          skip: const Text('Skip'),
          next: const Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          animationDuration: 1000,
        ),
      );

  DotsDecorator getDotDecoration() => const DotsDecorator(
        color: Color(0xFFBDBDBD),
        size: Size(10, 10),
        activeColor: Colors.blue,
      );

  Widget buildImage(String path) => Center(
          child: Image.asset(
        path,
        width: 350.0,
      ));

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        bodyPadding: EdgeInsets.all(16.0),
        imagePadding: EdgeInsets.all(24.0),
        pageColor: Colors.black,
      );
}
