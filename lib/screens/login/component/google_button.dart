import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
    required this.press,
  }) : super(key: key);

  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/ic-google.svg',
            width: 30.0,
            height: 30.0,
          ),
          const SizedBox(width: 10.0),
          const Text(
            'Sign in with Google',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        elevation: 0.0,
        minimumSize: const Size(350.0, 55.0),
      ),
    );
  }
}
