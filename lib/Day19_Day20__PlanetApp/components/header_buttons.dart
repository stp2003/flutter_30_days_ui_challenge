import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/constants/colors.dart';

class HeaderButtons extends StatelessWidget {
  const HeaderButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: white,
              ),
            ),
          ),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.more_vert_rounded,
              color: white,
            ),
          ),
        ],
      ),
    );
  }
}
