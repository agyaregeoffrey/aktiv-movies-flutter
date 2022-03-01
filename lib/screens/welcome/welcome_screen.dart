import 'package:aktiv_movies/utils/constants.dart';
import 'package:aktiv_movies/screens/components/button_standard.dart';
import 'package:aktiv_movies/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _appTitle(size),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.4,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding16),
                  child: Column(
                    children: [
                      const SizedBox(height: padding32),
                      const Text(
                        appDescription,
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.04),
                      StandardButton(
                        text: 'Get Started',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _appTitle(Size size) {
    return Positioned(
      top: size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'aktiv',
            style: bigText,
          ),
          SizedBox(width: 5.0),
          Icon(
            Icons.bubble_chart_rounded,
            color: Colors.white,
            size: 80.0,
          )
        ],
      ),
    );
  }
}
