import 'package:flutter/material.dart';

import '../../../models/travel_info.dart';

class HotelFeatures extends StatelessWidget {
  const HotelFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: 80.0,
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: index == 1 ? Colors.white : Colors.white24,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.black38,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    index == 0
                        ? Icons.bed_outlined
                        : index == 1
                            ? Icons.dinner_dining_outlined
                            : index == 2
                                ? Icons.hot_tub_outlined
                                : Icons.ac_unit_outlined,
                    color: Colors.black54,
                    size: 32.0,
                  ),
                  Text(
                    offerDetails[index],
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14.0,
                      fontFamily: "poppins_medium",
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
