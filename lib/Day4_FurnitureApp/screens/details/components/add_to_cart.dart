import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day4_FurnitureApp/utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: <Widget>[
          TextButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/chat.svg",
              height: 18.0,
            ),
            label: const Text(
              "Chat",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins_bold',
                letterSpacing: 0.5,
              ),
            ),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/shopping-bag.svg",
              height: 18.0,
            ),
            label: const Text(
              "Add to Cart",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins_bold',
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
