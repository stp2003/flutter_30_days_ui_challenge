import 'package:flutter/material.dart';

class SongDuration extends StatelessWidget {
  const SongDuration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('0:00'),
        Icon(Icons.shuffle),
        Icon(Icons.repeat),
        Text('5:03'),
      ],
    );
  }
}
