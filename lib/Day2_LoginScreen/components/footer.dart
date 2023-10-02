import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/utils/constants.dart';

class Footer extends StatelessWidget {
  final String title;
  final String navigatorText;
  final Function() onTap;

  const Footer({
    Key? key,
    required this.title,
    required this.navigatorText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black54,
            fontFamily: 'poppins_medium',
          ),
        ),
        const SizedBox(width: 20.0),
        InkWell(
          onTap: () {
            onTap();
          },
          child: Text(
            navigatorText,
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'poppins_bold',
              letterSpacing: 0.6,
            ),
          ),
        )
      ],
    );
  }
}
