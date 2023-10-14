import 'package:flutter/material.dart';

import 'neumorphic_box.dart';

class SongPlayBtn extends StatefulWidget {
  const SongPlayBtn({
    super.key,
  });

  @override
  State<SongPlayBtn> createState() => _SongPlayBtnState();
}

class _SongPlayBtnState extends State<SongPlayBtn> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: Row(
        children: [
          const Expanded(
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: NeumorphicBox(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  },
                  child: isPlaying
                      ? const Icon(
                          Icons.play_arrow,
                          size: 41.0,
                        )
                      : const Icon(
                          Icons.pause,
                          size: 41.0,
                        ),
                ),
              ),
            ),
          ),
          const Expanded(
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
