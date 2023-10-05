import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day5_PlantApp/screens/detail/plant_detail_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day5_PlantApp/screens/home/components/plant_card.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          PlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlantDetailScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlantDetailScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}
