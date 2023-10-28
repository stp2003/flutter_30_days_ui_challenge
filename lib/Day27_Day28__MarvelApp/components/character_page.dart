import 'package:flutter/material.dart';

import '../models/marvel_info.dart';
import 'news_card.dart';

class CharacterPage extends StatelessWidget {
  final index;

  const CharacterPage(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D0C11),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Hero(
                    tag: characterList[index]['imgUrl'].toString(),
                    child: Image.asset(
                      characterList[index]['imgUrl'].toString(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Image.asset('assets/images/nametag.png'),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: Text(
                    characterList[index]['real_name']!.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    characterList[index]['hero_name']!.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    characterList[index]['description'].toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const NewsCard(0),
                  const NewsCard(1),
                  const NewsCard(2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
