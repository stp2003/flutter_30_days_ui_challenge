import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day29_Day30__BatmanApp/models/batman_info.dart';
import 'package:flutter_30_days_ui_challenge/Day29_Day30__BatmanApp/screens/detail/widgets/stack_page_widgets.dart';
import 'package:get/get.dart';

import '../../components/buttons.dart';

class Day29And30DetailScreen extends StatefulWidget {
  const Day29And30DetailScreen({super.key});

  @override
  State<Day29And30DetailScreen> createState() => _Day29And30DetailScreenState();
}

class _Day29And30DetailScreenState extends State<Day29And30DetailScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back(result: false);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          onPageChanged: (p) {
            setState(() {
              page = p;
            });
          },
          children: const [
            StackPageWidget(infoHero: BatmanInfo.batman),
            StackPageWidget(infoHero: BatmanInfo.penguim),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 60, right: 25),
          child: ButtonComponent(
            text: 'READ MORE',
            buttonColor: page == 0
                ? BatmanInfo.batman['colorBase']
                : BatmanInfo.penguim['colorBase'],
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
