import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LinearProgressBar extends StatelessWidget {
  final double valueIntelligence;
  final String field;
  final String skillIcons;
  final Color color;

  const LinearProgressBar({
    super.key,
    required this.valueIntelligence,
    required this.field,
    required this.skillIcons,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: Get.width * 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Image.asset(
            skillIcons,
            height: 23,
          ),
          const SizedBox(height: 5),
          Text(
            field,
            style: GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              minHeight: 10,
              backgroundColor: Colors.grey[800],
              valueColor: AlwaysStoppedAnimation<Color>(
                color,
              ),
              value: valueIntelligence,
            ),
          ),
        ],
      ),
    );
  }
}
