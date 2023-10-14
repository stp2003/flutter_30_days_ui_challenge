import 'package:flutter/material.dart';

class NeumorphicBox extends StatelessWidget {
  final child;

  const NeumorphicBox({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15.0,
            offset: const Offset(5, 5),
          ),
          const BoxShadow(
            color: Colors.white,
            blurRadius: 15.0,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
