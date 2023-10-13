import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeNameContainer extends StatelessWidget {
  const CoffeeNameContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 320,
      child: BlurryContainer(
        padding: const EdgeInsets.all(20),
        height: 140,
        color: const Color(0xff141921),
        width: 377,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cappuccino",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "With Oat Milk",
                  style: TextStyle(
                    color: Color(0xff919296),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/star.svg",
                      height: 20,
                      color: const Color(0xffd17842),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "4.5",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "(6.983)",
                      style: TextStyle(
                        color: Color(0xff919296),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: const Color(0xff101419),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/coffee-beans.svg",
                            color: const Color(0xffd17842),
                            height: 15,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "Coffee",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: const Color(0xff101419),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/water-drop.svg",
                            color: const Color(0xffd17842),
                            height: 15,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "Milk",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 37,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xff101419),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Medium Roasted",
                      style: TextStyle(
                        color: Color(0xff919296),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
