import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day23_Day24__LightDarkTheme/components/parallax_widget.dart';

class Day23And24HomeScreen extends StatefulWidget {
  const Day23And24HomeScreen({super.key});

  @override
  State<Day23And24HomeScreen> createState() => _Day23And24HomeScreenState();
}

class _Day23And24HomeScreenState extends State<Day23And24HomeScreen> {
  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 90;

  late String asset;
  late double top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            setState(() {
              rateEight -= v.scrollDelta! / 1;
              rateSeven -= v.scrollDelta! / 1.5;
              rateSix -= v.scrollDelta! / 2;
              rateFive -= v.scrollDelta! / 2.5;
              rateFour -= v.scrollDelta! / 3;
              rateThree -= v.scrollDelta! / 3.5;
              rateTwo -= v.scrollDelta! / 4;
              rateOne -= (v.scrollDelta! / 4.5);
              rateZero -= (v.scrollDelta! / 5);
            });
          }
          return true;
        },
        child: Stack(
          children: <Widget>[
            ParallaxWidget(top: rateZero, asset: "parallax0"),
            ParallaxWidget(top: rateOne, asset: "parallax1"),
            ParallaxWidget(top: rateTwo, asset: "parallax2"),
            ParallaxWidget(top: rateThree, asset: "parallax3"),
            ParallaxWidget(top: rateFour, asset: "parallax4"),
            ParallaxWidget(top: rateFive, asset: "parallax5"),
            ParallaxWidget(top: rateSix, asset: "parallax6"),
            ParallaxWidget(top: rateSeven, asset: "parallax7"),
            ParallaxWidget(top: rateEight, asset: "parallax8"),
            ListView(
              children: <Widget>[
                Container(
                  height: 600,
                  color: Colors.transparent,
                ),
                Container(
                  color: const Color(0xff210002),
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 70),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Parallax In",
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1.8,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                          fontSize: 51,
                          letterSpacing: 1.8,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 190,
                        child: Divider(
                          height: 1,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
