import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/components/background.dart';
import 'package:flutter_30_days_ui_challenge/Day19_Day20__PlanetApp/components/header_buttons.dart';
import 'package:intl/intl.dart';

import '../models/planets.dart';
import '../widgets/category_items.dart';

class Day19And20DetailScreen extends StatefulWidget {
  final PlanetsModel planet;

  const Day19And20DetailScreen({
    super.key,
    required this.planet,
  });

  @override
  State<Day19And20DetailScreen> createState() => _Day19And20DetailScreenState();
}

class _Day19And20DetailScreenState extends State<Day19And20DetailScreen> {
  List<String> categories = ['360', 'information', 'gallery'];
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    PlanetsModel planet = widget.planet;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Background(size: size),
            Column(
              children: [
                const SizedBox(height: 20),
                const HeaderButtons(),
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
                const SizedBox(height: 80),
                Hero(
                  tag: planet.image!,
                  child: Image.asset(
                    'assets/images/${planet.image}',
                    width: size.width * 0.9,
                  ),
                ),
                const SizedBox(height: 70),
                Text(
                  planet.name!,
                  style: const TextStyle(
                    fontFamily: 'poppins_bold',
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Size',
                            style: TextStyle(
                              fontFamily: 'poppins_bold',
                              color: Colors.white,
                              letterSpacing: 1.2,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'd = ${NumberFormat('###,000.#', "id_ID").format(planet.size).replaceAll('.', ' ')} km',
                            style: const TextStyle(
                              fontFamily: 'poppins_medium',
                              color: Colors.white70,
                              letterSpacing: 0.8,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Distance from Sun',
                            style: TextStyle(
                              fontFamily: 'poppins_bold',
                              color: Colors.white,
                              letterSpacing: 1.2,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '${NumberFormat('###,000.#', "id_ID").format(planet.distanceFromSun).replaceAll('.', ' ')} km',
                            style: const TextStyle(
                              fontFamily: 'poppins_medium',
                              color: Colors.white70,
                              letterSpacing: 0.8,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
