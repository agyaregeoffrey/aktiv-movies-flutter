import 'package:aktiv_movies/screens/components/button_standard.dart';
import 'package:aktiv_movies/screens/components/button_text.dart';
import 'package:aktiv_movies/screens/components/edit_text.dart';
import 'package:aktiv_movies/utils/colors.dart';
import 'package:aktiv_movies/utils/constants.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
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
                  'Create new account',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Please fill in the form to continue',
                  style: normalTextStyle,
                ),
                const SizedBox(height: 30.0),
                EditText(
                    hint: 'Fullname',
                    control: _nameController,
                    validate: (value) {}),
                const SizedBox(
                  height: padding8,
                ),
                EditText(
                  hint: 'Email Address',
                  control: _emailController,
                  validate: (value) {},
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: padding8,
                ),
                EditText(
                  hint: 'Phone Number',
                  control: _phoneController,
                  validate: (value) {},
                  inputType: TextInputType.number,
                ),
                const SizedBox(
                  height: padding8,
                ),
                EditText(
                  hint: 'Password',
                  control: _passwordController,
                  validate: (value) {},
                  hideText: true,
                ),
                const SizedBox(
                  height: padding16,
                ),
                StandardButton(
                  text: 'Sign Up',
                  press: () {},
                  color: purple500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: normalTextStyle,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    ButtonText(
                      text: 'Sign In',
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
