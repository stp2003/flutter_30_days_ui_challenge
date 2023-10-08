import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: InkWell(
        onTap: () {},
        child: Material(
          elevation: 10.0,
          borderRadius: BorderRadius.circular(18.0),
          child: Container(
            width: 380.0,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.blue,
            ),
            child: const Center(
              child: Text(
                'Book Now',
                style: TextStyle(
                  fontFamily: 'poppins_bold',
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
