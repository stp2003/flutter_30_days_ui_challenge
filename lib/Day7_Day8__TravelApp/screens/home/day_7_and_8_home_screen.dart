import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/screens/home/widgets/hot_deal_list.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/screens/home/widgets/popular_hotel_list.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/screens/home/widgets/tabs.dart';

import '../../screens/home/widgets/header.dart';
import '../detail/day_8_detail_screen.dart';

class Day7and8HomeScreen extends StatefulWidget {
  const Day7and8HomeScreen({Key? key}) : super(key: key);

  @override
  State<Day7and8HomeScreen> createState() => _Day7and8HomeScreenState();
}

class _Day7and8HomeScreenState extends State<Day7and8HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Header(),
              const SizedBox(height: 30.0),
              const Tabs(),
              const SizedBox(height: 25.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Hotels',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: "poppins_bold",
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "poppins_medium",
                        color: CupertinoColors.systemYellow,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              const PopularHotelList(),
              const SizedBox(height: 25.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Hot Deals',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: "poppins_bold",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day8DetailScreen(),
                    ),
                  );
                },
                child: const HotDealList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
