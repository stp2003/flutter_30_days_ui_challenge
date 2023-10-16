import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/constants/colors.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/models/movies.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/widgets/custom_card.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/widgets/custom_card_thumbnail.dart';

class Day15And16HomeScreen extends StatefulWidget {
  const Day15And16HomeScreen({super.key});

  @override
  State<Day15And16HomeScreen> createState() => _Day15And16HomeScreenState();
}

class _Day15And16HomeScreenState extends State<Day15And16HomeScreen> {
  //***
  List<MovieModel> forYouItemList = List.of(forYouImages);
  List<MovieModel> popularItemList = List.of(popularImages);
  List<MovieModel> genresItemList = List.of(genresList);

  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);

  int currentPage = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: kSearchbarColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: buildPageIndicatorWidget(),
                      ),
                    ),
                  ),
                  //*** popular movies ->
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins_bold',
                                fontSize: 20.0,
                                letterSpacing: 0.8,
                              ),
                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                color: kButtonColor,
                                fontFamily: 'poppins_bold',
                                fontSize: 16.0,
                                letterSpacing: 0.8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  movieListBuilder(popularItemList),
                  //*** genre movies ->
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Genres',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins_bold',
                                fontSize: 20.0,
                                letterSpacing: 0.8,
                              ),
                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                color: kButtonColor,
                                fontFamily: 'poppins_bold',
                                fontSize: 16.0,
                                letterSpacing: 0.8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  genresBuilder(genresItemList),
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
        physics: const ClampingScrollPhysics(),
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

  //??
  List<Widget> buildPageIndicatorWidget() {
    List<Widget> list = [];
    for (int i = 0; i < forYouItemList.length; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 150,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white30,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  //??
  Widget movieListBuilder(List<MovieModel> movieList) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: MediaQuery.of(context).size.height * 0.31,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return CustomCard(
            movieModel: movieList[index],
          );
        },
      ),
    );
  }

  Widget genresBuilder(List<MovieModel> genresList) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      height: MediaQuery.of(context).size.height * 0.20,
      child: ListView.builder(
        itemCount: genresList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 10.0,
                  bottom: 30.0,
                ),
                width: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      genresList[index].imageAsset.toString(),
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 20.0,
                child: Text(
                  genresList[index].movieName.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins_bold',
                    fontSize: 16.0,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
