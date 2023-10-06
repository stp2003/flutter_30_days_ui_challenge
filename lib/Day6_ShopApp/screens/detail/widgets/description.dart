import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day6_ShopApp/models/product_info.dart';

import '../../../constants/constants.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final ProductInfo product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: const TextStyle(
          height: 1.5,
          fontFamily: 'poppins_medium',
        ),
      ),
    );
  }
}
