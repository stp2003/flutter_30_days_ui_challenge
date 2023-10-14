import 'package:flutter/material.dart';

import 'neumorphic_box.dart';

class MusicHeader extends StatelessWidget {
  const MusicHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 60.0,
          width: 60.0,
          child: NeumorphicBox(
            child: Icon(Icons.arrow_back),
          ),
        ),
        Text(
          'P L A Y L I S T',
          style: TextStyle(
            fontFamily: 'poppins_bold',
            fontSize: 16.0,
            letterSpacing: 0.6,
          ),
        ),
        SizedBox(
          height: 60.0,
          width: 60.0,
          child: NeumorphicBox(
            child: Icon(Icons.menu),
          ),
        ),
      ],
    );
  }
}
