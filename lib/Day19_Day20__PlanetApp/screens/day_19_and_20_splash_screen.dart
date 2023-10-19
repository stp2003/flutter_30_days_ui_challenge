import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/constants/colors.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/screens/day_19_and_20_home_screen.dart';

import '../widgets/fade_in_animation.dart';

class Day19And20SplashScreen extends StatefulWidget {
  const Day19And20SplashScreen({super.key});

  @override
  State<Day19And20SplashScreen> createState() => _Day19And20SplashScreenState();
}

class _Day19And20SplashScreenState extends State<Day19And20SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: black,
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            FadeInAnimation(
              animatePosition: MyAnimation(
                topAfter: -150,
                topBefore: -150,
                leftAfter: -650,
                leftBefore: -800,
                bottomAfter: -150,
                bottomBefore: -150,
              ),
              delayInMs: 1000,
              durationInMs: 2000,
              child: GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day19And20HomeScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/earth_home.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
