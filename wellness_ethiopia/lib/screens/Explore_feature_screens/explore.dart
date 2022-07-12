import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/GAD.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/depression.dart';
import 'package:wellness_ethiopia/utilities/colors.dart';
import 'package:wellness_ethiopia/widgets/commonCard.dart';
import 'package:wellness_ethiopia/constants.dart';

import '../../utilities/global_variable.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          width > webScreenSize ? webBackgroundColor : mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 30, 30),
        centerTitle: true,
        title: Text(
          'Explore Page',
          style:
              GoogleFonts.fredokaOne(textStyle: const TextStyle(fontSize: 25)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: const Text(
              'Common Mental illinesses ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                // child: CommonCard(
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => Depression()));
                //   },
                //   color: kPictureBackgroundColor,
                //   image: Image.asset('images/depression.png'),

                // ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Depression()));
                  },
                  child: const Text(
                    'Depression',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                // child: CommonCard(
                //   onPressed: () {
                //     // Route
                //   },
                //   color: kPictureBackgroundColor,
                //   image: Image.asset('images/mentalPuzzle.png'),
                // ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Gad()));
                  },
                  child: const Text(
                    'G.A.D',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: CommonCard(
                  onPressed: () {
                    // Route
                  },
                  color: kPictureBackgroundColor,
                  image: Image.asset('images/mentalPuzzle.png'),
                ),
              ),
            ],
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: CommonCard(
                  onPressed: () {
                    // ROute
                  },
                  color: kPictureBackgroundColor,
                  image: Image.asset('images/mentalPuzzle.png'),
                ),
              ),
              Expanded(
                child: CommonCard(
                  onPressed: () {
                    // Route
                  },
                  color: kPictureBackgroundColor,
                  image: Image.asset('images/mentalPuzzle.png'),
                ),
              ),
              Expanded(
                child: CommonCard(
                  onPressed: () {
                    // Route
                  },
                  color: kPictureBackgroundColor,
                  image: Image.asset('images/mentalPuzzle.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: const Text(
              'WELL KNOWN MENTAL HEALTH INSTITUTIONS',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Expanded(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: CommonCard(
                    onPressed: () {
                      // Route
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/mentalPuzzle.png'),
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    onPressed: () {
                      // Route
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/mentalPuzzle.png'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: CommonCard(
                    onPressed: () {
                      // ROute
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/mentalPuzzle.png'),
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    onPressed: () {
                      // Route
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/mentalPuzzle.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
