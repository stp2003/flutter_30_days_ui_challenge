import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'neumorphic_box.dart';

class SongProgressIndicator extends StatelessWidget {
  const SongProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicBox(
      child: LinearPercentIndicator(
        lineHeight: 6.0,
        percent: 0.5,
        progressColor: Colors.green,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
