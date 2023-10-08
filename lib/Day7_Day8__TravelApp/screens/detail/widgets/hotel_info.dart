import 'package:flutter/material.dart';

import 'book_now_button.dart';
import 'hotel_features.dart';
import 'hotel_owner_name.dart';

class HotelInfo extends StatelessWidget {
  const HotelInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
          child: Text(
            'BaLi Motel\nVung Tau',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: "poppins_bold",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.0),
          child: Row(
            children: [
              Icon(
                Icons.place_outlined,
                color: Colors.black,
                size: 17.0,
              ),
              SizedBox(width: 5.0),
              Text(
                'Indonesia',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: "poppins",
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.0),
        Padding(
          padding: EdgeInsets.only(left: 17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.deepOrange,
                    size: 18.0,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    '4.9(6.8K review)',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "poppins",
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Row(
                  children: [
                    Text(
                      '₹580',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: "poppins_bold",
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '/night',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: "poppins",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.0, right: 15.0, top: 5.0),
          child: Divider(
            color: Colors.black12,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Set in Vung Tau, 100 meters from Front Beach, BaLi\nMotel Vung Tau offers accommodation with a\ngarden, private parking and a shared...',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 14.3,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 25.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
          child: Text(
            'What we offer',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: "poppins_bold",
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 15.0),
        HotelFeatures(),
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
          child: Text(
            'Hosted By',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: "poppins_bold",
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 5.0),
        HotelOwnerName(),
        SizedBox(height: 15.0),
        BookNowButton(),
      ],
    );
  }
}
