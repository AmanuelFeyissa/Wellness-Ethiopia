import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/constants.dart';

class FormInputWidget extends StatelessWidget {
  FormInputWidget(
      {@required this.icon, required this.margin, @required this.width});

  final IconData? icon;
  var margin = EdgeInsets.fromLTRB(15.0, 30.0, 10.0, 0.0);
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: margin,
      height: 50.0,
      width: width,
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
