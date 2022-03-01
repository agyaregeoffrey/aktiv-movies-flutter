import 'package:aktiv_movies/utils/colors.dart';
import 'package:aktiv_movies/utils/constants.dart';
import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  const EditText({
    Key? key,
    required this.hint,
    required this.control,
    required this.validate,
    this.inputType = TextInputType.text,
    this.hideText = false,
  }) : super(key: key);

  final String? hint;
  final TextEditingController control;
  final String? Function(String?) validate;
  final TextInputType inputType;
  final bool hideText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: gray,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        child: TextFormField(
          controller: control,
          validator: validate,
          obscureText: hideText,
          cursorColor: Colors.white,
          cursorWidth: 1.0,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: normalTextStyle.copyWith(color: gray500)),
        ),
      ),
    );
  }
}
