import 'package:aktiv_movies/screens/components/button_standard.dart';
import 'package:aktiv_movies/screens/components/button_text.dart';
import 'package:aktiv_movies/screens/components/edit_text.dart';
import 'package:aktiv_movies/screens/login/component/google_button.dart';
import 'package:aktiv_movies/screens/signup/sign_up_screen.dart';
import 'package:aktiv_movies/utils/colors.dart';
import 'package:aktiv_movies/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.07),
                const Text(
                  'Welcome Back!',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Please sign in to your account',
                  style: normalTextStyle,
                ),
                const SizedBox(height: 30.0),
                EditText(
                  hint: 'Email Address',
                  control: _emailController,
                  inputType: TextInputType.emailAddress,
                  validate: (value) {},
                ),
                const SizedBox(height: padding8),
                EditText(
                  hint: 'Password',
                  control: _passwordController,
                  validate: (value) {},
                  hideText: true,
                ),
                const SizedBox(height: padding16),
                Align(
                  alignment: Alignment.topRight,
                  child: ButtonText(
                    text: 'Forgot Password?',
                    press: () {},
                  ),
                ),
                const SizedBox(height: padding32),
                StandardButton(
                  text: 'Sign In',
                  press: () {},
                  color: purple500,
                ),
                const SizedBox(height: padding8),
                GoogleButton(press: () {}),
                const SizedBox(height: padding16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: normalTextStyle,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    ButtonText(
                      text: 'Sign Up',
                      color: purple500,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
