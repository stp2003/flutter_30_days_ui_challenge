import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/utils/constants.dart';

class ProductImage extends StatelessWidget {
  final Size size;
  final String image;

  const ProductImage({
    super.key,
    required this.size,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
