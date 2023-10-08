import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/models/travel_info.dart';

class HotDealList extends StatelessWidget {
  const HotDealList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: hotelName.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Positioned(
                left: 10.8,
                right: 10.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    height: 180.0,
                    width: 360.0,
                    fit: BoxFit.cover,
                    hotHotelLink[index],
                  ),
                ),
              ),
              Container(
                width: 325.0,
                margin: const EdgeInsets.symmetric(horizontal: 12.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.transparent),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE5670C),
                      ),
                      child: Text(
                        '${hotHotelDiscount[index]}% OFF',
                        style: const TextStyle(
                          fontFamily: 'poppins_medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 45.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          hotHotelName[index],
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontFamily: "poppins_bold",
                            color: Colors.white,
                          ),
                        ),
                        // const SizedBox(width: 100.0),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: CupertinoColors.systemYellow,
                              size: 15.0,
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              hotHotelRatings[index],
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontFamily: "poppins_medium",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.place_outlined,
                              color: Colors.white,
                              size: 17.0,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              hotHotelLocation[index],
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: "poppins",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '₹${hotHotelAmount[index]}',
                              style: const TextStyle(
                                fontSize: 16.0,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
