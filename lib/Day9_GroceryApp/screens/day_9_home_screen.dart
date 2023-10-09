import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day9_GroceryApp/components/grocery_item_tile.dart';
import 'package:flutter_30_days_ui_challenge/Day9_GroceryApp/screens/day_9_my_cart_page.dart';

class Day9HomeScreen extends StatefulWidget {
  const Day9HomeScreen({super.key});

  @override
  State<Day9HomeScreen> createState() => _Day9HomeScreenState();
}

class _Day9HomeScreenState extends State<Day9HomeScreen> {
  final List shopItems = const [
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "2.50", "assets/images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assets/images/chicken.png", Colors.brown],
    ["Water", "1.00", "assets/images/water.png", Colors.blue],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Icon(
            Icons.location_on,
            color: Colors.grey[700],
          ),
        ),
        title: const Text(
          'Varanasi, India',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Day9MyCartPage();
            },
          ),
        ),
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),

      //??
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Good morning,',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ),
          const SizedBox(height: 4),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: TextStyle(
                fontFamily: 'poppins_bold',
                letterSpacing: 0.8,
                fontSize: 36.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh Items",
              style: TextStyle(
                fontFamily: 'poppins_medium',
                letterSpacing: 0.8,
                fontSize: 18.0,
                color: Colors.white54,
              ),
            ),
          ),

          //?? recent orders -> show last 3
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: shopItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.2,
              ),
              itemBuilder: (context, index) {
                return GroceryItemTile(
                  itemName: shopItems[index][0],
                  itemPrice: shopItems[index][1],
                  imagePath: shopItems[index][2],
                  color: shopItems[index][3],
                  onPressed: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
