import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day10_StopWatch/screens/day_10_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day11_SmartHome/screens/day_11_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day12_Day13__CoffeeApp/screens/day_12_and_13_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day14_NemomorphicMusicPlayer/screens/day_14_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/screens/day_15_and_16_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day17_Day18__NewsApp/screens/day_17_and_18_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day1_OnboardingScreens/screens/day_1_onboarding_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/screens/day_2_login_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day3_SignUpScreen/screens/day_3_signup_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/screens/products/day_4_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day5_PlantApp/screens/home/day_5_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/home/day_6_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/screens/home/day_7_and_8_home_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day9_GroceryApp/screens/day_9_intro_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //??
  final List<String> dayTasksButton = [
    'Day1_OnboardingScreens',
    'Day2_LoginScreen',
    'Day3_SignUpScreen',
    'Day4_FurnitureApp',
    'Day5_PlantApp',
    'Day6_ShopApp',
    'Day7_Day8__TravelApp',
    'Day9_GroceryApp',
    'Day10_StopWatch',
    'Day11_SmartHome',
    'Day12_Day13__CoffeeApp',
    'Day14_NemomorphicMusicPlayer',
    'Day15_Dat16__MovieApp',
    'Day17_Day18__NewsApp',
    'Day19_Day20__PlanetApp',
    'Day21_Day22__YogaApp',
    'Day23_Day24__LightDarkTheme',
    'Day25_Day26__InstagramApp',
    'Day27_Day28__MarvelApp',
    'Day29_Day30__BatmanApp',
  ];

  //??
  final List routes = [
    const Day1OnboardingScreen(),
    const Day2LoginScreen(),
    const Day3SignUpScreen(),
    const Day4ProductScreen(),
    const Day5HomeScreen(),
    const Day6HomeScreen(),
    const Day7and8HomeScreen(),
    const Day9IntroScreen(),
    const Day10HomeScreen(),
    const Day11HomeScreen(),
    const Day12And13HomeScreen(),
    const Day14HomeScreen(),
    const Day15And16HomeScreen(),
    const Day17And18HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
      appBar: AppBar(
        title: const Text(
          'Flutter UI 30 Days Challenge',
          style: TextStyle(
            fontSize: 22.0,
            letterSpacing: 0.8,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(76, 28, 121, 1.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 1100,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: dayTasksButton.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => routes[index],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          backgroundColor: Colors.teal,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                        ),
                        child: Text(
                          dayTasksButton[index],
                          style: const TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 0.8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
