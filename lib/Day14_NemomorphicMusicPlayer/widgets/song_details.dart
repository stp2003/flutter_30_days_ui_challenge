import 'package:flutter/material.dart';

import 'neumorphic_box.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicBox(
      child: Column(
        children: [
          Image.asset(
            'assets/images/batman.png',
            color: Colors.black45,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Like a Dog Chasing Cars',
                      style: TextStyle(
                        fontFamily: 'poppins_bold',
                        fontSize: 16.0,
                        letterSpacing: 0.6,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Hans Zimmer',
                      style: TextStyle(
                        fontFamily: 'poppins_medium',
                        letterSpacing: 0.6,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
