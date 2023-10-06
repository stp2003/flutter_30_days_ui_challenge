import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/models/product_info.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/detail/widgets/color_and_size.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/detail/widgets/counter_with_fav_btn.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/detail/widgets/description.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/screens/detail/widgets/product_title_with_image.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';
import 'widgets/add_to_cart.dart';

class Day6DetailScreen extends StatelessWidget {
  const Day6DetailScreen({
    super.key,
    required this.product,
  });

  final ProductInfo product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(189, 218, 223, 1.0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        Description(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        const CounterWithFavBtn(),
                        const SizedBox(height: kDefaultPadding / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
