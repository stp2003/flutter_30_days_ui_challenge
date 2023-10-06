import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/models/product_info.dart';

import '../../../constants/constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.product});

  final ProductInfo product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins_medium',
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontFamily: 'poppins_bold',
                ),
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontFamily: 'poppins_bold',
                              ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
