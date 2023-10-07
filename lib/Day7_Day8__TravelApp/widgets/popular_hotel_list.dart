import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/models/travel_info.dart';

class PopularHotelList extends StatelessWidget {
  const PopularHotelList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: hotelName.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150.0,
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  hotelLink[index],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelName[index],
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: "poppins_bold",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    const Icon(
                      Icons.place_outlined,
                      color: Colors.white,
                      size: 17.0,
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      hotelLocation[index],
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontFamily: "poppins",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 7.0),
                Row(
                  children: [
                    Text(
                      '₹${hotelAmount[index]}',
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins_bold",
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '/night',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 9.0),
                    const Icon(
                      Icons.star,
                      color: CupertinoColors.systemYellow,
                      size: 15.0,
                    ),
                    Text(
                      hotelRatings[index],
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
