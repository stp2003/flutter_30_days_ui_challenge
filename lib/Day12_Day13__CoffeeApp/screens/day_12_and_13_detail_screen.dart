import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day12_Day13__CoffeeApp/widgets/coffee_name_container.dart';
import 'package:flutter_30_days_ui_challenge/Day12_Day13__CoffeeApp/widgets/header.dart';
import 'package:flutter_30_days_ui_challenge/Day12_Day13__CoffeeApp/widgets/size_tab.dart';

class Day12And13DetailScreen extends StatelessWidget {
  const Day12And13DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Stack(
                children: [
                  Header(),
                  CoffeeNameContainer(),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                        color: Color(0xff919296),
                        fontFamily: 'poppins_bold',
                        letterSpacing: 0.8,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "A cappuccino is a coffee-based drink made primarily from espresso and milk.",
                      style: TextStyle(
                        color: Color(0xff919296),
                        fontSize: 15.0,
                        fontFamily: 'poppins_medium',
                        letterSpacing: 0.8,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Size",
                      style: TextStyle(
                        color: Color(0xff919296),
                        fontSize: 20.0,
                        fontFamily: 'poppins_bold',
                        letterSpacing: 0.8,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SizeTab(),
                    const SizedBox(height: 27),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Color(0xff919296),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  r'$',
                                  style: TextStyle(
                                    color: Color(0xffd17842),
                                    fontSize: 21,
                                  ),
                                ),
                                Text(
                                  " 4.20",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontFamily: 'poppins_bold',
                                    letterSpacing: 0.8,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ButtonTheme(
                          minWidth: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xffd17842),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
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
      ),
    );
  }
}
