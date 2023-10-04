import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/components/search_box.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/models/product_info.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/screens/details/details_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/screens/products/widgets/category_list.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/screens/products/widgets/product_card.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class Day4ProductScreen extends StatelessWidget {
  const Day4ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            SearchBox(onChanged: (value) {}),
            const CategoryList(),
            const SizedBox(height: kDefaultPadding / 2),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 70.0),
                    decoration: const BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //??
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: kPrimaryColor,
      title: const Text(
        'Dashboard',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'poppins_bold',
          letterSpacing: 0.8,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/notification.svg",
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
