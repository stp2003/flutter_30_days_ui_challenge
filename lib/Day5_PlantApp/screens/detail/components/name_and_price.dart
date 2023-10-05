import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class NameAndPrice extends StatelessWidget {
  final String title, country;
  final int price;

  const NameAndPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: kTextColor,
                        fontFamily: 'poppins_bold',
                      ),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontFamily: 'poppins_medium',
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: kPrimaryColor,
                  fontFamily: 'poppins_bold',
                ),
          )
        ],
      ),
    );
  }
}
