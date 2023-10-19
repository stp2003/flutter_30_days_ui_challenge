import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/planets.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: darkBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'How humans pick\nout constellation',
                style: TextStyle(
                  fontFamily: 'poppins_bold',
                  color: Colors.green,
                  letterSpacing: 1.2,
                  fontSize: 16.0,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: blue,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            astronomicalNews,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: 'poppins',
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
