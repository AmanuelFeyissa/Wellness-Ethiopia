import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/GAD.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/adhd.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/depression.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/ptsd.dart';
import 'package:wellness_ethiopia/utilities/colors.dart';
import 'package:wellness_ethiopia/widgets/commonCard.dart';
import 'package:wellness_ethiopia/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utilities/global_variable.dart';

class Explore extends StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

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
            margin: const EdgeInsets.only(left: 15.0),
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
                child: Container(
                  padding: const EdgeInsets.all(35.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Gad()));
                    },
                    child: const Text(
                      'G.A.D',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Adhd()));
                  },
                  child: const Text(
                    'A.D.H.D',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Depression()));
                  },
                  child: const Text(
                    'Depression',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(35.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Ptsd()));
                    },
                    child: const Text(
                      'P.T.S.D',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
          Expanded(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: CommonCard(
                    onPressed: () {
                      launchURL('http://gergesenon.org/');
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/gerg.png'),
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    onPressed: () {
                      // Route
                      launchURL('https://sitotapsy.com/');
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/sitota.png'),
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
                      launchURL('https://lebeza.org/');
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/lebeza.png'),
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    onPressed: () {
                      // Route
                      launchURL(
                          'http://www.abbichumemorialpsychiatricspecialtyandrehabclinic.com/index.html#');
                    },
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/abbichu.png'),
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
