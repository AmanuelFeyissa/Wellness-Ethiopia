import 'package:flutter/material.dart';

// A dart file for the common buttons, for the profile pictures on every page
class CommonCard extends StatelessWidget {
  late Color? color;
  late Image? image;
  late Function()? onPressed;

  CommonCard({@required this.color, this.image, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.all(15.0),
        child: image,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
