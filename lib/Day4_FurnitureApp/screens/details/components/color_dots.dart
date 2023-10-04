import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/utils/constants.dart';

class ColorDots extends StatelessWidget {
  final Color fillColor;
  final bool isSelected;

  const ColorDots({
    super.key,
    required this.fillColor,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: const EdgeInsets.all(3.0),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? const Color(0xFF707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
