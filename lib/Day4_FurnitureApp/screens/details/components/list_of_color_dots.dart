import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/utils/constants.dart';

import 'color_dots.dart';

class ListOfColorDots extends StatelessWidget {
  const ListOfColorDots({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDots(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDots(
            fillColor: Color(0xFFFF5200),
            isSelected: false,
          ),
          ColorDots(
            fillColor: kPrimaryColor,
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
