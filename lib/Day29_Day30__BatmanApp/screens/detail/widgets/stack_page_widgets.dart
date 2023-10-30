import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day29_Day30__BatmanApp/screens/detail/widgets/vehicals_info.dart';

import '../../home/widgets/background_widget.dart';
import 'avatar_person.dart';
import 'character_info.dart';
import 'character_specification.dart';
import 'description_text.dart';

class StackPageWidget extends StatelessWidget {
  final Map infoHero;

  const StackPageWidget({
    super.key,
    required this.infoHero,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          BackgroundWidget(
            image: infoHero['backgrondImage'],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                CharacterInfo(
                  name: infoHero['name'],
                  nameHero: infoHero['nameHero'],
                  height: infoHero['height'],
                  weight: infoHero['weight'],
                  race: infoHero['race'],
                  color: infoHero['colorBase'],
                ),
                DescriptionText(desc: infoHero['description']),
                CharacterSpecification(infoHero: infoHero),
                const SizedBox(height: 30),
                Visibility(
                  visible: infoHero['nameHero'] == 'BATMAN',
                  child: const VehiclesInfo(),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          AvatarPerson(
            hero: infoHero['hero'],
          ),
        ],
      ),
    );
  }
}
