import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    required this.text,
    this.color = Colors.white,
    required this.press,
  }) : super(key: key);

  final String text;
  final Color color;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Text(text),
      style: TextButton.styleFrom(
        primary: color,
        textStyle: const TextStyle(
          fontSize: 13.0,
        ),
      ),
    );
  }
}
