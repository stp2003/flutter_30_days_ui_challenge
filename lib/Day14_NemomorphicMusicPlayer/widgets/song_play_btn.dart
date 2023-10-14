import 'package:flutter/material.dart';

import 'neumorphic_box.dart';

class SongPlayBtn extends StatelessWidget {
  const SongPlayBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80.0,
      child: Row(
        children: [
          Expanded(
            child: NeumorphicBox(
              child: Icon(
                Icons.skip_previous,
                size: 30.0,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: NeumorphicBox(
                child: Icon(
                  Icons.play_arrow,
                  size: 41.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: NeumorphicBox(
              child: Icon(
                Icons.skip_next,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
