import 'dart:ui';

import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  const StandardButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color = Colors.black,
      this.textColor = Colors.white})
      : super(key: key);

  final String text;
  final Function()? press;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: textColor,
        elevation: 0.0,
        textStyle: TextStyle(color: textColor),
        minimumSize: const Size(350.0, 55.0),
      ),
    );
  }
}
