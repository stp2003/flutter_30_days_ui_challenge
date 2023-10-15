import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/constants/colors.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/models/movies.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/widgets/custom_card_thumbnail.dart';

class Day15And16HomeScreen extends StatefulWidget {
  const Day15And16HomeScreen({super.key});

  @override
  State<Day15And16HomeScreen> createState() => _Day15And16HomeScreenState();
}

class _Day15And16HomeScreenState extends State<Day15And16HomeScreen> {
  //***
  List<MovieModel> forYouItemList = List.of(forYouImages);
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 30.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hi, Shashwat!',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'poppins_bold',
                            fontSize: 22.0,
                            letterSpacing: 0.8,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/batman.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kButtonColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: kSearchbarColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white38,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white54,
                              fontFamily: 'poppins',
                              fontSize: 16.0,
                              letterSpacing: 0.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                    child: Text(
                      'For You',
                      style: TextStyle(
                        color: Colors.white54,
                        fontFamily: 'poppins',
                        fontSize: 16.0,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                  forYouCardsLayout(forYouImages),
                ],
              ),
            ),
          ),

          //?? bottom nav bar ->
          Positioned(
            child: Container(),
          ),
        ],
      ),
    );
  }

  //??
  Widget forYouCardsLayout(List<MovieModel> movieList) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: PageView.builder(
        controller: pageController,
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return CustomCardThumbnail(
            imageAsset: movieList[index].imageAsset.toString(),
          );
        },
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
      ),
    );
  }
}
