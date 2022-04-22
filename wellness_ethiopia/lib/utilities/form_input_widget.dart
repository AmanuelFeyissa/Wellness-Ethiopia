import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/constants.dart';

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
