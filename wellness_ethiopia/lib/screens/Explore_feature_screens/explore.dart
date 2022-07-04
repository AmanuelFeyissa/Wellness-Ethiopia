import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/depression.dart';
import 'package:wellness_ethiopia/widgets/commonCard.dart';
import 'package:wellness_ethiopia/constants.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Page'),
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
              'MENTAL ILLNESSES',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: CommonCard(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Depression()));
                  },
                  color: kPictureBackgroundColor,
                  image: Image.asset('images/depression.png'),
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
              'MENTAL HEALTH INSTITUTIONS',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
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
        ],
      ),
    );
  }
}
