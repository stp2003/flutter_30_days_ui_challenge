import 'package:flutter/material.dart';

class Day9MyCartPage extends StatelessWidget {
  const Day9MyCartPage({super.key});

  final List cartItems = const [
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
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "My Cart",
              style: TextStyle(
                fontFamily: 'poppins_bold',
                letterSpacing: 0.8,
                fontSize: 36.0,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                itemCount: cartItems.length,
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          cartItems[index][2],
                          height: 36,
                        ),
                        title: Text(
                          cartItems[index][0],
                          style: const TextStyle(
                            fontSize: 18,
                            letterSpacing: 0.5,
                            fontFamily: 'poppins_medium',
                          ),
                        ),
                        subtitle: Text(
                          '\$' + cartItems[index][1],
                          style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontFamily: 'poppins_medium',
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.cancel),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
              ),
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.5,
                          fontFamily: 'poppins_bold',
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "\$ 58",
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.5,
                          fontFamily: 'poppins_bold',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green.shade200),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Text(
                          'Pay Now',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.5,
                            fontFamily: 'poppins_bold',
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
