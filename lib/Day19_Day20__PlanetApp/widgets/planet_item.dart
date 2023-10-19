import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/planets.dart';

class PlanetItem extends StatelessWidget {
  const PlanetItem({
    super.key,
    required this.size,
    required this.viewPortFraction,
    required this.scale,
    required this.planet,
  });

  final Size size;
  final double viewPortFraction;
  final double scale;
  final PlanetsModel planet;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.width *
              0.74 *
              max(viewPortFraction, scale - viewPortFraction),
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: darkBlue.withOpacity(0.7),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Positioned(
          left: 85,
          bottom: 165,
          child: Hero(
            tag: planet.image!,
            child: Image.asset(
              'assets/images/${planet.image}',
              height: size.width * 0.65 * (scale - viewPortFraction),
              width: size.width * 0.65 * (scale - viewPortFraction),
            ),
          ),
        ),
        Positioned(
          left: 36,
          right: 36,
          bottom: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                planet.name!,
                style: const TextStyle(
                  fontFamily: 'poppins_bold',
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontSize: 16.0,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
