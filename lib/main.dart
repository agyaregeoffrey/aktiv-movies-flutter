import 'package:aktiv_movies/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aktiv Movies',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _appTitle(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.45,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding32),
                  child: Column(
                    children: [
                      const SizedBox(height: padding64),
                      const Text(
                        appDescription,
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Get Started'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          elevation: 0.0,
                          minimumSize: const Size(350.0, 50.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(padding8),
                          ),
                        ),
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

  Positioned _appTitle() {
    return Positioned(
      top: 150,
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
