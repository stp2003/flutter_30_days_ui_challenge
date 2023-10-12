import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day12_Day13__CoffeeApp/widgets/coffee_card.dart';

import '../widgets/special_coffee_card.dart';

class Day12And13HomeScreen extends StatefulWidget {
  const Day12And13HomeScreen({super.key});

  @override
  State<Day12And13HomeScreen> createState() => _Day12And13HomeScreenState();
}

class _Day12And13HomeScreenState extends State<Day12And13HomeScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    tabController = TabController(initialIndex: 0, length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 620,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xff1b2027),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.menu,
                          color: Color(0xff4d4f52),
                        ),
                      ),
                      Image.asset(
                        "assets/images/batman.png",
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Find the best\ncoffee for you",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'poppins_bold',
                      letterSpacing: 0.7,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xff141921),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Find your coffee...",
                        hintStyle: const TextStyle(color: Color(0xff3c4046)),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TabBar(
                    isScrollable: true,
                    controller: tabController,
                    labelColor: const Color(0xffd17842),
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: const Color(0xff3c4046),
                    indicator: CircleTabIndicator(
                      color: const Color(0xffd17842),
                      radius: 4,
                    ),
                    tabs: const [
                      Tab(text: "Cappuccino"),
                      Tab(text: "Americano"),
                      Tab(text: "Espresso"),
                      Tab(text: "Mocha"),
                      Tab(text: "Macchiato"),
                      Tab(text: "Doppio"),
                    ],
                  ),
                  CoffeeCard(),
                  const Text(
                    "Special for you",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'poppins_bold',
                      letterSpacing: 0.7,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            SpecialCoffeeCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xffd17842),
        unselectedItemColor: const Color(0xff4d4f52),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({
    required Color color,
    required double radius,
  }) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
