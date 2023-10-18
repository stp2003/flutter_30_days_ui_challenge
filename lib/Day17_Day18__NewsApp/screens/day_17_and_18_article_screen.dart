import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day17_Day18__NewsApp/model/article_model.dart';
import 'package:flutter_30_days_ui_challenge/Day17_Day18__NewsApp/widgets/image_container.dart';

import '../components/news_body.dart';
import '../components/news_headline.dart';

class Day17And18ArticleScreen extends StatelessWidget {
  const Day17And18ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            NewsHeadline(article: article),
            NewsBody(article: article)
          ],
        ),
      ),
    );
  }
}
