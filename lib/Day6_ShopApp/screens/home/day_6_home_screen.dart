import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/detail/day_6_detail_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/home/widgets/categories_list.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/home/widgets/item_card.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';
import '../../models/product_info.dart';

class Day6HomeScreen extends StatelessWidget {
  const Day6HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(26, 19, 39, 1.0),
        elevation: 0.0,
        title: const Text(
          "Shopify",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins_bold',
            letterSpacing: 0.8,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2),
        ],
      ),

      //??
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: 5.0),
            child: Text(
              "Shopify",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: 'poppins_bold',
                    letterSpacing: 0.8,
                    color: Colors.white,
                  ),
            ),
          ),
          const CategoriesList(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Day6DetailScreen(
                        product: products[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
