import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
  const AccountTab4({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      physics: const BouncingScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.5),
          child: Container(
            color: Colors.yellow[100],
          ),
        );
      },
    );
  }
}
