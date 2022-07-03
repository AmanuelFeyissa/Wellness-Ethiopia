import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/constants.dart';
import 'package:wellness_ethiopia/widgets/commonCard.dart';

class Depression extends StatelessWidget {
  // Modify this part
  String depressionDescription = 'EDIT THIS PART';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A Quick Description'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Text('Depression'),
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                CommonCard(
                  color: kPictureBackgroundColor,
                  // Enter Image path here
                  image: Image.asset('images/depression.png'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                child: Text(
                  'Description \n \n $depressionDescription',
                ),
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kPictureBackgroundColor,
                )),
          ),
        ],
      ),
    );
  }
}
