import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day15_Dat16__MovieApp/models/movies.dart';

class CustomCard extends StatelessWidget {
  final MovieModel movieModel;

  const CustomCard({
    super.key,
    required this.movieModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          height: 200.0,
          width: 140.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                movieModel.imageAsset!,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Positioned(
          left: 15.0,
          right: 15.0,
          top: 208.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieModel.movieName!,
                      style: const TextStyle(
                        fontFamily: 'poppins_bold',
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      movieModel.year!,
                      style: const TextStyle(
                        fontFamily: 'poppins_medium',
                        color: Colors.white54,
                        fontSize: 12.0,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieModel.movieRating!,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      fontFamily: 'poppins_medium',
                      color: Colors.white54,
                      fontSize: 16.0,
                      letterSpacing: 0.8,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17.0,
                  ),
                  const SizedBox(width: 5.0),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
