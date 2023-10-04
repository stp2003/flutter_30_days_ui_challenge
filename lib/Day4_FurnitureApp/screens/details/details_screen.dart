import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/models/product_info.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/screens/details/widgets/add_to_cart.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/screens/details/widgets/list_of_color_dots.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/screens/details/widgets/product_image.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  final ProductInfo product;

  const DetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    //**
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text(
          'Back'.toUpperCase(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFamily: 'poppins_bold',
                letterSpacing: 0.6,
              ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Hero(
                        tag: '${product.id}',
                        child: ProductImage(
                          size: size,
                          image: product.image,
                        ),
                      ),
                    ),
                    const ListOfColorDots(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2,
                      ),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: 'poppins_medium',
                              letterSpacing: 0.5,
                            ),
                      ),
                    ),
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'poppins_bold',
                        letterSpacing: 0.5,
                        color: Colors.purple,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2,
                      ),
                      child: Text(
                        product.description,
                        style: const TextStyle(
                          color: kTextLightColor,
                          fontFamily: 'poppins',
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding),
                  ],
                ),
              ),
              const AddToCart(),
            ],
          ),
        ),
      ),
    );
  }
}
