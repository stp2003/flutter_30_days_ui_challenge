import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/utils/bubble_stories.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/utils/users_post.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List people = ['Shashwat', 'Arafat', 'Ved', 'Ankita', 'Tejas', 'Anni'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppins_bold',
                letterSpacing: 0.8,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130.0,
            child: ListView.builder(
              itemCount: people.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubbleStories(
                  text: people[index],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: UserPosts(name: people[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
