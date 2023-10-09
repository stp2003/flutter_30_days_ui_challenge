import 'package:flutter/material.dart';

import 'day_9_home_screen.dart';

class Day9IntroScreen extends StatelessWidget {
  const Day9IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                top: 120,
                bottom: 20,
              ),
              child: Image.asset('assets/images/avocado.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(28.0),
              child: Text(
                'We deliver groceries at your doorstep',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'poppins_bold',
                  letterSpacing: 0.8,
                  fontSize: 36.0,
                ),
              ),
            ),
            Text(
              'Fresh items everyday',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.5,
                fontFamily: 'poppins_medium',
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 24),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Day9HomeScreen();
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 112, 91, 222),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins_bold',
                    letterSpacing: 0.8,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
