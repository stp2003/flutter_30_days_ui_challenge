import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day1_OnboardingScreens/widgets/planet_card.dart';
import 'package:lottie/lottie.dart';

final data = [
  CardPlanetData(
    title: "Heal",
    subtitle: "If you make yourself more than just a man.",
    image: const AssetImage("assets/images/img-1.png"),
    backgroundColor: const Color.fromRGBO(44, 7, 109, 1.0),
    titleColor: Colors.pink,
    subtitleColor: Colors.white,
    background: LottieBuilder.asset("assets/animation/bg-1.json"),
  ),
  CardPlanetData(
    title: "Overcome",
    subtitle: "If you devote yourself to an ideal, and if they can't stop you",
    image: const AssetImage("assets/images/img-2.png"),
    backgroundColor: Colors.white,
    titleColor: Colors.purple,
    subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
    background: LottieBuilder.asset("assets/animation/bg-2.json"),
  ),
  CardPlanetData(
    title: "Rise",
    subtitle: "Then you become something else entirely. 'A Legend'.",
    image: const AssetImage("assets/images/img-3.png"),
    backgroundColor: const Color.fromRGBO(7, 155, 101, 1.0),
    titleColor: Colors.yellow,
    subtitleColor: Colors.white,
    background: LottieBuilder.asset("assets/animation/bg-3.json"),
  ),
];
