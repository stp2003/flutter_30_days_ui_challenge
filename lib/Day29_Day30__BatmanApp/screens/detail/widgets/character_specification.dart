import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/icons_constants.dart';
import 'linear_progress_bar.dart';

class CharacterSpecification extends StatelessWidget {
  final Map infoHero;

  const CharacterSpecification({
    super.key,
    required this.infoHero,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Get.height * 0.15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          LinearProgressBar(
            valueIntelligence: infoHero['inteligence'],
            field: 'INTELLIGENCE',
            skillIcons: IconConst.inteligence,
            color: infoHero['colorBase'],
          ),
          LinearProgressBar(
            valueIntelligence: infoHero['strenght'],
            field: 'STRENGTH',
            skillIcons: IconConst.strenght,
            color: infoHero['colorBase'],
          ),
          LinearProgressBar(
            valueIntelligence: infoHero['speed'],
            skillIcons: IconConst.speed,
            field: 'SPEED',
            color: infoHero['colorBase'],
          ),
          LinearProgressBar(
            skillIcons: IconConst.power,
            valueIntelligence: infoHero['power'],
            field: 'POWER',
            color: infoHero['colorBase'],
          ),
        ],
      ),
    );
  }
}
