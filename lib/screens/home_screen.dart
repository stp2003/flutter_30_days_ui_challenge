import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day1_OnboardingScreens/screens/home_screen.dart';

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
    'Day10_TeaApp',
    'Day11_SmartHome',
    'Day12_Day13__HabitTracker',
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
    const Day1HomeScreen(),
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
            )
          ],
        ),
      ),
    );
  }
}
