import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day5_PlantApp/screens/home/components/header.dart';
import 'package:flutter_30_days_ui_challenge/Day5_PlantApp/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/featured_plants.dart';
import 'components/more_text.dart';
import 'components/recommended_plants.dart';

class Day5HomeScreen extends StatelessWidget {
  const Day5HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //***
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
          ),
        ),
      ),

      //??
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(size: size),
            MoreText(title: "Recommended", press: () {}),
            const RecommendsPlants(),
            MoreText(title: "Featured Plants", press: () {}),
            const FeaturedPlants(),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
