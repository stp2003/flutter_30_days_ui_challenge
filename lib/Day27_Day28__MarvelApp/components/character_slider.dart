import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day27_Day28__MarvelApp/models/marvel_info.dart';

import 'character_page.dart';

class CharacterSlider extends StatefulWidget {
  const CharacterSlider({super.key});

  @override
  State<CharacterSlider> createState() => _CharacterSliderState();
}

class _CharacterSliderState extends State<CharacterSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: characterList.length,
      itemBuilder: (context, index, _) => CharacterCard(index),
      options: CarouselOptions(height: 400.0),
    );
  }
}

class CharacterCard extends StatelessWidget {
  final index;

  const CharacterCard(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterPage(index),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(40),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 5,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 40,
                  child: Hero(
                    tag: characterList[index]['imgUrl'].toString(),
                    child: Image.asset(
                      characterList[index]['imgUrl'].toString(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width / 2 - 40,
                color: Colors.red,
              ),
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        characterList[index]['hero_name']!.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        characterList[index]['real_name']!.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
