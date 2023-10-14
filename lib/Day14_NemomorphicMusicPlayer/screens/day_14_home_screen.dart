import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day14_NemomorphicMusicPlayer/widgets/music_header.dart';
import 'package:flutter_30_days_ui_challenge/Day14_NemomorphicMusicPlayer/widgets/song_details.dart';
import 'package:flutter_30_days_ui_challenge/Day14_NemomorphicMusicPlayer/widgets/song_duration.dart';
import 'package:flutter_30_days_ui_challenge/Day14_NemomorphicMusicPlayer/widgets/song_play_btn.dart';
import 'package:flutter_30_days_ui_challenge/Day14_NemomorphicMusicPlayer/widgets/song_progress_indicator.dart';

class Day14HomeScreen extends StatefulWidget {
  const Day14HomeScreen({super.key});

  @override
  State<Day14HomeScreen> createState() => _Day14HomeScreenState();
}

class _Day14HomeScreenState extends State<Day14HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              SizedBox(height: 25.0),
              //*** back button and menu ->
              MusicHeader(),
              SizedBox(height: 40.0),
              //*** cover art, artist name, song name ->
              SongDetails(),
              SizedBox(height: 40.0),
              //*** start time, shuffle btn, repeat btn, end time ->
              SongDuration(),
              SizedBox(height: 35.0),
              //*** liner progress bar ->
              SongProgressIndicator(),
              SizedBox(height: 100.0),
              //***  previous, play, next btn ->
              SongPlayBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
