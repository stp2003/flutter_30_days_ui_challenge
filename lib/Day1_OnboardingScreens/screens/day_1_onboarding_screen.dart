import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day1_OnboardingScreens/models/info.dart';
import 'package:flutter_30_days_ui_challenge/Day1_OnboardingScreens/screens/day_1_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day1_OnboardingScreens/widgets/planet_card.dart';

class Day1OnboardingScreen extends StatelessWidget {
  const Day1OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Day1HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
