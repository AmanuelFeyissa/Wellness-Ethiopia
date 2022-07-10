import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/constants.dart';
import 'package:wellness_ethiopia/screens/Explore_feature_screens/dep.dart';
import 'package:wellness_ethiopia/widgets/commonCard.dart';

import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class Depression extends StatelessWidget {
  // Modify this part
  //String depressionDescription = 'EDIT THIS PART';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('A Quick Description'),
      // ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //const Text('Depression'),
            Expanded(
              flex: 4,
              child: Container(
                  child: HtmlWidget(
                    dHtml,
                    webView: false,
                  ),
                  margin: const EdgeInsets.all(25.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kPictureBackgroundColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
