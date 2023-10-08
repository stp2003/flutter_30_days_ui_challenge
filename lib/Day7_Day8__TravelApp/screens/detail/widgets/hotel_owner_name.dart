import 'package:flutter/material.dart';

class HotelOwnerName extends StatelessWidget {
  const HotelOwnerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              'https://indonesia.tripcanvas.co/wp-content/uploads/2020/08/Bali-pool-villa-feature.jpg',
              width: 65.0,
              height: 65.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10.0),
          const Column(
            children: [
              Text(
                'Harleen Smith',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "poppins_medium",
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                      size: 22.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '4.9(1.4K review)',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "poppins",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 90.0),
          Material(
            elevation: 8.0,
            borderRadius: BorderRadius.circular(13.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(13.0),
                border: Border.all(
                  color: Colors.transparent,
                ),
              ),
              child: const Icon(
                Icons.message_outlined,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
