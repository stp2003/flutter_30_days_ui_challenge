import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day17_Day18__NewsApp/components/breaking_news.dart';
import 'package:flutter_30_days_ui_challenge/Day17_Day18__NewsApp/components/news_of_the_day.dart';
import 'package:flutter_30_days_ui_challenge/Day17_Day18__NewsApp/model/article_model.dart';
import 'package:flutter_30_days_ui_challenge/Day17_Day18__NewsApp/widgets/bottom_nav_bar.dart';

class Day17And18HomeScreen extends StatelessWidget {
  const Day17And18HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(padding: EdgeInsets.zero, children: [
        NewsOfTheDay(article: article),
        BreakingNews(articles: Article.articles),
      ]),
    );
  }
}
