import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/utils/constants.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData icon;

  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'poppins',
            letterSpacing: 0.8,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
