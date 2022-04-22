import 'package:flutter/material.dart';

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
