import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/constants/colors.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/models/planets.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/screens/day_19_and_20_detail_screen.dart';

import '../widgets/category_items.dart';
import '../widgets/news_items.dart';
import '../widgets/planet_item.dart';

class Day19And20HomeScreen extends StatefulWidget {
  const Day19And20HomeScreen({super.key});

  @override
  State<Day19And20HomeScreen> createState() => _Day19And20HomeScreenState();
}

class _Day19And20HomeScreenState extends State<Day19And20HomeScreen> {
  List<String> categories = ['All', 'Planets', 'Comets', 'Stars', 'Satellites'];
  PageController? pageController;
  double? pageOffset = 1;
  double viewPortFraction = 0.85;

  int selectedCategory = 1;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: 1, viewportFraction: viewPortFraction)
          ..addListener(
            () {
              setState(() {
                pageOffset = pageController!.page;
              });
            },
          );
  }

  @override
  void dispose() {
    super.dispose();
    pageController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      black.withOpacity(0.30), BlendMode.darken),
                  image: const AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.grid_view_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      'Welcome !',
                      style: TextStyle(
                        fontFamily: 'poppins_bold',
                        color: Colors.white,
                        letterSpacing: 1.2,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: List.generate(
                        categories.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = index;
                            });
                          },
                          child: Padding(
                            padding: index == 0
                                ? const EdgeInsets.only(left: 22, right: 30)
                                : index == categories.length - 1
                                    ? const EdgeInsets.only(right: 22)
                                    : const EdgeInsets.only(right: 30),
                            child: CategoryItem(
                              category: categories[index],
                              selected: selectedCategory == index,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: size.height * 0.5,
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: pageController,
                      itemCount: planets.length,
                      itemBuilder: (context, index) {
                        double scale = max(
                          viewPortFraction,
                          (1 - (pageOffset! - index).abs() + viewPortFraction),
                        );
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Day19And20DetailScreen(
                                  planet: planets[index],
                                ),
                              ),
                            );
                          },
                          child: PlanetItem(
                            planet: planets[index],
                            size: size,
                            viewPortFraction: viewPortFraction,
                            scale: scale,
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Astronomical News',
                          style: TextStyle(
                            fontFamily: 'poppins_bold',
                            color: Colors.white,
                            letterSpacing: 1.2,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontFamily: 'poppins_medium',
                            color: Colors.white70,
                            letterSpacing: 1.2,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const NewsItem(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
