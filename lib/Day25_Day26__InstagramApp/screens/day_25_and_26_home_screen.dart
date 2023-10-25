import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/pages/account.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/pages/home.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/pages/reels.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/pages/search.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/pages/shop.dart';

class Day25And26HomeScreen extends StatefulWidget {
  const Day25And26HomeScreen({super.key});

  @override
  State<Day25And26HomeScreen> createState() => _Day25And26HomeScreenState();
}

class _Day25And26HomeScreenState extends State<Day25And26HomeScreen> {
  int _selectedIndex = 0;

  //??
  void _navBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //??
  final List<Widget> _children = [
    Home(),
    const Search(),
    const Reels(),
    const Shop(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 8.0,
        currentIndex: _selectedIndex,
        onTap: _navBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_sharp), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
