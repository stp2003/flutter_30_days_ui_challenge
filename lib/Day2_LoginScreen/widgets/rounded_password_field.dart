import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/utils/constants.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          hintText: "Password",
          hintStyle: TextStyle(
            fontFamily: 'poppins',
            letterSpacing: 0.8,
            color: Colors.black,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
