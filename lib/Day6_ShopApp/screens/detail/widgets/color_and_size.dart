import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../models/product_info.dart';
import 'color_dots.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.product});

  final ProductInfo product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Color",
                style: TextStyle(
                  fontFamily: 'poppins',
                ),
              ),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFA29B9B), isSelected: false),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(
                  text: "Size\n",
                  style: TextStyle(
                    fontFamily: 'poppins',
                  ),
                ),
                TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontFamily: 'poppins_bold',
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
