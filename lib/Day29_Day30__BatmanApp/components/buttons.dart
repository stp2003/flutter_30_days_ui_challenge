import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonComponent extends StatelessWidget {
  final Color color;
  final String text;
  final Color buttonColor;

  const ButtonComponent({
    super.key,
    required this.color,
    required this.text,
    this.buttonColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      width: double.infinity,
      height: Get.height * 0.11,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 19,
            spreadRadius: 0,
            color: buttonColor.withOpacity(0.8),
          )
        ],
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.bebasNeue(
            fontSize: 26,
            color: color,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
