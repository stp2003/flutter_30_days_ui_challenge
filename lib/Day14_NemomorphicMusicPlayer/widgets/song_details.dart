import 'package:flutter/material.dart';

import 'neumorphic_box.dart';

class SongDetails extends StatefulWidget {
  const SongDetails({
    super.key,
  });

  @override
  State<SongDetails> createState() => _SongDetailsState();
}

class _SongDetailsState extends State<SongDetails> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return NeumorphicBox(
      child: Column(
        children: [
          Image.asset(
            'assets/images/batman.png',
            color: Colors.black45,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: isSelected ? Colors.pinkAccent : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
