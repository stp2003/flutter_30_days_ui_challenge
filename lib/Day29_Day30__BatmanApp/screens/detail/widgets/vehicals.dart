import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vehicles extends StatelessWidget {
  final String vehicles;

  const Vehicles({
    super.key,
    required this.vehicles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30, bottom: 40),
      width: Get.width * 1,
      height: Get.height * 0.30,
      child: Center(
        child: Image.asset(vehicles),
      ),
    );
  }
}
