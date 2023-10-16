import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/constants/colors.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/models/movies.dart';

class Day15And16DetailScreen extends StatefulWidget {
  const Day15And16DetailScreen({super.key});

  @override
  State<Day15And16DetailScreen> createState() => _Day15And16DetailScreenState();
}

class _Day15And16DetailScreenState extends State<Day15And16DetailScreen> {
  List<MovieModel> popularItems = List.of(popularImages);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                //?? background ->
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width,
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    gradient: LinearGradient(
                      colors: [
                        kBackgroundColor.withOpacity(0.8),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        popularItems[0].imageAsset.toString(),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //??
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dune',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'poppins_bold',
                                  fontSize: 25.0,
                                  letterSpacing: 0.8,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '2021 Denis Villenueve',
                                style: TextStyle(
                                  color: Colors.white38,
                                  fontFamily: 'poppins_medium',
                                  fontSize: 16.0,
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ],
                          ),
                          //??
                          Row(
                            children: [
                              Text(
                                '8.2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'poppins_bold',
                                  fontSize: 16.0,
                                  letterSpacing: 0.8,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
