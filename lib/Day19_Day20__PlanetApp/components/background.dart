import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/constants/colors.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            black.withOpacity(0.45),
            BlendMode.darken,
          ),
          image: const AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
