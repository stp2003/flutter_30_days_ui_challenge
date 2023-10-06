import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  List<String> categories = ["Handbags", "Technology", "Footwear", "T-Shirts"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 35.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  //??
  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontFamily: 'poppins_medium',
                letterSpacing: 0.5,
                color: selectedIndex == index ? Colors.white : kTextLightColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              height: 2.0,
              width: 35.0,
              color:
                  selectedIndex == index ? Colors.yellow : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
