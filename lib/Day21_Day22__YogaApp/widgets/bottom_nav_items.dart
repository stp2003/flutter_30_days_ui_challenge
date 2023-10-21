import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function() press;
  final bool isActive;

  const BottomNavItem({
    super.key,
    required this.svgScr,
    required this.title,
    required this.press,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? kActiveIconColor : kTextColor,
              fontFamily: 'poppins_medium',
            ),
          ),
        ],
      ),
    );
  }
}
