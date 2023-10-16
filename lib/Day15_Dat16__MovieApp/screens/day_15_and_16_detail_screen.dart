import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/constants/colors.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/models/movies.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/widgets/cast_and_crew.dart';
import 'package:readmore/readmore.dart';

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
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
                      //??
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTag('Epic'),
                          const SizedBox(width: 10.0),
                          buildTag('Fantasy'),
                          const SizedBox(width: 10.0),
                          buildTag('Drama'),
                          const SizedBox(width: 10.0),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      //??
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: ReadMoreText(
                          "Year 10191. Summoned by the emperor to take over the stewardship of the arid, inhospitable planet Arrakis--the only source of Spice, the sacred hallucinogen--Duke Leto of the noble House Atreides and his family travel to the peril-laden exoplanet. But there, beset by indecipherable visions, the duke's gifted son, Paul Atreides, finds himself caught between two worlds as the grotesque Baron Vladimir of the brutal House Harkonnen plots revenge. Now, the road to legend leads deep into the desert. Can Paul fulfil his destiny in far-off Dune, the home of the mysterious, blue-eyed Fremen?",
                          style: TextStyle(
                            color: Colors.white38,
                            fontFamily: 'poppins_medium',
                            height: 1.5,
                          ),
                          colorClickableText: Colors.green,
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                        ),
                      ),

                      //?? cast and crew ->
                      CastAndCrew(cast: popularItems[0].cast!),
                      //??
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Trailer',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins_bold',
                                fontSize: 20.0,
                                letterSpacing: 0.8,
                              ),
                            ),
                            //??
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  height: 180.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18.0),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/trailer.jpeg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(9.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white38,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    color: kButtonColor.withOpacity(0.8),
                                    size: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //??
                      const SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Comments',
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
                                    fontSize: 18.0,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                              ],
                            ),
                            //??
                            buildCommentsCard(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white70,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_outlined,
                  color: kSearchbarColor,
                  size: 20.0,
                ),
              ),
            ),
          ),

          //??
          Positioned(
            bottom: 30.0,
            left: 30.0,
            right: 30.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: kButtonColor,
                alignment: Alignment.center,
                height: 70.0,
                child: const Text(
                  'Watch Movies',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins_bold',
                    fontSize: 18.0,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //??
  Widget buildTag(String title) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: kSearchbarColor,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white38,
          fontFamily: 'poppins_bold',
          fontSize: 16.0,
          letterSpacing: 0.8,
        ),
      ),
    );
  }

  //??
  Widget buildCommentsCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 160.0,
      child: ListView.builder(
        itemCount: popularItems[0].comments!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 15.0),
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            width: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kSearchbarColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                popularItems[0]
                                    .comments![index]['imageUrl']
                                    .toString(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popularItems[0].comments![index]['name'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins_bold',
                                fontSize: 16.0,
                                letterSpacing: 0.8,
                              ),
                            ),
                            Text(
                              popularItems[0].comments![index]['date'],
                              style: const TextStyle(
                                color: Colors.white38,
                                fontFamily: 'poppins',
                                letterSpacing: 0.8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          popularItems[0].comments![index]['rating'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'poppins_bold',
                            letterSpacing: 0.8,
                          ),
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 13.0,
                        ),
                      ],
                    ),
                  ],
                ),
                //??
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Text(
                    popularItems[0].comments![index]['comment'],
                    maxLines: 3,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontFamily: 'poppins_medium',
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
