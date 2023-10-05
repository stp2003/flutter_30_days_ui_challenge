import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day5_PlantApp/screens/home/components/underlined_text.dart';

import '../../../utils/constants.dart';

class MoreText extends StatelessWidget {
  final String title;
  final Function() press;

  const MoreText({
    super.key,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          UnderlinedText(text: title),
          const Spacer(),
          TextButton(
            onPressed: press,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: const Text(
              "More",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins_medium',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
