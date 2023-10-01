import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day1_OnboardingScreens/widgets/planet_card.dart';
import 'package:lottie/lottie.dart';

final data = [
  CardPlanetData(
    title: "observe",
    subtitle: "The night sky has much to offer to those who seek its mystery.",
    image: const AssetImage("assets/images/img-1.png"),
    backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
    titleColor: Colors.pink,
    subtitleColor: Colors.white,
    background: LottieBuilder.asset("assets/animation/bg-1.json"),
  ),
  CardPlanetData(
    title: "imagine",
    subtitle: "An endless number of galaxies means endless possibilities.",
    image: const AssetImage("assets/images/img-2.png"),
    backgroundColor: Colors.white,
    titleColor: Colors.purple,
    subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
    background: LottieBuilder.asset("assets/animation/bg-2.json"),
  ),
  CardPlanetData(
    title: "stargaze",
    subtitle: "The sky dome is a beautiful graveyard of stars.",
    image: const AssetImage("assets/images/img-3.png"),
    backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
    titleColor: Colors.yellow,
    subtitleColor: Colors.white,
    background: LottieBuilder.asset("assets/animation/bg-3.json"),
  ),
];
