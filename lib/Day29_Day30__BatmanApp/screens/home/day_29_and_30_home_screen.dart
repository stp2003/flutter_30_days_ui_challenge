import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day29_Day30__BatmanApp/screens/detail/day_29_and_30_detail_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day29_Day30__BatmanApp/screens/home/widgets/background_widget.dart';
import 'package:flutter_30_days_ui_challenge/Day29_Day30__BatmanApp/screens/home/widgets/logo_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/buttons.dart';
import '../../constants/color_constants.dart';
import '../../constants/image_constants.dart';

class Day29And30HomeScreen extends StatefulWidget {
  const Day29And30HomeScreen({super.key});

  @override
  State<Day29And30HomeScreen> createState() => _Day29And30HomeScreenState();
}

class _Day29And30HomeScreenState extends State<Day29And30HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    animationController.repeat();
  }

  bool isLoad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const BackgroundWidget(image: ImageConst.theBatmanIntro),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const LogoWidget(),
                Padding(
                  padding: const EdgeInsets.all(60),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoad = !isLoad;
                          });
                          Future.delayed(
                            const Duration(seconds: 5),
                            () async {
                              isLoad = await Get.to(
                                const Day29And30DetailScreen(),
                                transition: Transition.size,
                                duration: const Duration(seconds: 1),
                                curve: Curves.bounceInOut,
                              );
                              setState(() {});
                            },
                          );
                        },
                        child: AnimatedContainer(
                          curve: Curves.bounceInOut,
                          width: isLoad ? 80 : Get.width * 0.80,
                          height: isLoad ? 80 : Get.height * 0.11,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 19,
                                spreadRadius: 0,
                                color: Colors.red.withOpacity(0.7),
                              )
                            ],
                            borderRadius: isLoad
                                ? BorderRadius.circular(100)
                                : BorderRadius.circular(10),
                            color: ColorsConst.primaryColor,
                          ),
                          duration: const Duration(milliseconds: 300),
                          child: Center(
                            child: isLoad
                                ? AnimatedBuilder(
                                    animation: animationController,
                                    child: Image.asset(
                                      ImageConst.batLoad,
                                      height: Get.height * 0.09,
                                    ),
                                    builder: (_, widget) {
                                      return Transform.rotate(
                                        angle: animationController.value * 6.3,
                                        child: widget,
                                      );
                                    },
                                  )
                                : Text(
                                    'SEE INFORMATION',
                                    style: GoogleFonts.bebasNeue(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Visibility(
                        visible: !isLoad,
                        child: const ButtonComponent(
                          text: 'NEW TRAILER',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
