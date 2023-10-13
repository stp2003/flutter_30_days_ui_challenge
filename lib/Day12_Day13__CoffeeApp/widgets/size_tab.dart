import 'package:flutter/material.dart';

class SizeTab extends StatelessWidget {
  const SizeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 37,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xffd17842),
            ),
          ),
          child: const Center(
            child: Text(
              "S",
              style: TextStyle(
                color: Color(0xff919296),
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(width: 11),
        Container(
          height: 37,
          width: 110,
          decoration: BoxDecoration(
            color: const Color(0xff101419),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "M",
              style: TextStyle(
                color: Color(0xff919296),
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(width: 11),
        Container(
          height: 37,
          width: 110,
          decoration: BoxDecoration(
            color: const Color(0xff101419),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "L",
              style: TextStyle(
                color: Color(0xff919296),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
