import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/models/travel_info.dart';

class Tabs extends StatefulWidget {
  const Tabs({
    super.key,
  });

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              width: 80.0,
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? const Color(0xFF62A6F7)
                    : Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: selectedIndex == index ? Colors.white : Colors.black26,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      index == 0
                          ? Icons.home
                          : index == 1
                              ? Icons.place_outlined
                              : index == 2
                                  ? Icons.flight_outlined
                                  : Icons.fastfood_outlined,
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.black54,
                      size: 32.0,
                    ),
                    Text(
                      categories[index],
                      style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.black87,
                        fontSize: 16.0,
                        fontFamily: "poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
