import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/image_constants.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageConst.logo,
      height: Get.height * 0.20,
    );
  }
}
