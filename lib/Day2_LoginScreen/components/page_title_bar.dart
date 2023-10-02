import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/utils/constants.dart';

class PageTitleBar extends StatelessWidget {
  final String title;

  const PageTitleBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 260.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        decoration: const BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              fontFamily: 'poppins_bold',
            ),
          ),
        ),
      ),
    );
  }
}
