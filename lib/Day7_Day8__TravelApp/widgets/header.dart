import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Where you\nwanna go?',
            style: TextStyle(
              fontSize: 23.0,
              fontFamily: "poppins_bold",
            ),
          ),
          Material(
            elevation: 10.0,
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.white70,
                ),
              ),
              child: const Icon(
                Icons.search_rounded,
                size: 35.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
