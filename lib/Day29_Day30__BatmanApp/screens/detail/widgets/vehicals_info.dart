import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day29_Day30__BatmanApp/screens/detail/widgets/vehicals.dart';
import 'package:get/get.dart';

import '../../../constants/image_constants.dart';

class VehiclesInfo extends StatelessWidget {
  const VehiclesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: Get.height * 0.40,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: const [
            Vehicles(vehicles: ImageConst.car1),
            Vehicles(vehicles: ImageConst.car2),
            Vehicles(vehicles: ImageConst.car3),
            Vehicles(vehicles: ImageConst.motorcycle),
          ],
        ),
      ),
    );
  }
}
