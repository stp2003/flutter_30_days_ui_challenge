import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/models/product_info.dart';

import '../../../constants/constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  final ProductInfo product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'poppins_medium',
              ),
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(
              fontFamily: 'poppins_bold',
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
