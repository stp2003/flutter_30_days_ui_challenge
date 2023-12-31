import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day12_Day13__CoffeeApp/screens/day_12_and_13_detail_screen.dart';

class CoffeeCard extends StatelessWidget {
  final List<String> images = [
    "assets/images/coffee2.jpg",
    "assets/images/coffee1.jpg",
    "assets/images/coffee3.jpg",
    "assets/images/coffee4.jpg",
  ];

  final List<String> ingredients = [
    "With Oat Milk",
    "With Cinnamon Powder",
    "With Chocolate Powder",
    "With Caramel Drizzle"
  ];

  final List<double> price = [4.29, 3.21, 6.46, 2.90];

  CoffeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Day12And13DetailScreen(),
            ),
          );
        },
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 250,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff242931),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        height: 135,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Cappuccino",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins_medium',
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              ingredients[index],
                              style: const TextStyle(
                                color: Color(0xff919293),
                                fontSize: 10,
                                fontFamily: 'poppins',
                                letterSpacing: 0.4,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      r'$ ',
                                      style: TextStyle(
                                        color: Color(0xffd17842),
                                        fontSize: 20,
                                        fontFamily: 'poppins_bold',
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    Text(
                                      "${price[index]}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'poppins_bold',
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffd17842),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}
