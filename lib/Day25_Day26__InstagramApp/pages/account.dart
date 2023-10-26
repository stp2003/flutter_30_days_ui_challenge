import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/utils/account_tab_1.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/utils/account_tab_2.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/utils/account_tab_3.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/utils/account_tab_4.dart';
import 'package:flutter_30_days_ui_challenge/Day25_Day26__InstagramApp/utils/bubble_stories.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '2',
                                style: TextStyle(
                                  fontFamily: 'poppins_bold',
                                ),
                              ),
                              Text('Posts'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '2000',
                                style: TextStyle(
                                  fontFamily: 'poppins_bold',
                                ),
                              ),
                              Text('Followers'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '1236',
                                style: TextStyle(
                                  fontFamily: 'poppins_bold',
                                ),
                              ),
                              Text('Following'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shashwat',
                      style: TextStyle(
                        fontFamily: 'poppins_bold',
                      ),
                    ),
                    Text(
                      'I am batman',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Center(
                            child: Text('Edit profile'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Center(
                            child: Text('Ad Tools'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Center(
                            child: Text('Insights'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Row(
                  children: [
                    BubbleStories(text: 'story 1'),
                    BubbleStories(text: 'story 2'),
                    BubbleStories(text: 'story 3'),
                    BubbleStories(text: 'story 4'),
                  ],
                ),
              ),
              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.grid_3x3)),
                  Tab(icon: Icon(Icons.video_call)),
                  Tab(icon: Icon(Icons.shop)),
                  Tab(icon: Icon(Icons.person)),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                    AccountTab3(),
                    AccountTab4(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
