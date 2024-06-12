import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomIconButton extends StatelessWidget {
  final String svg;

  const CustomIconButton({super.key, required this.svg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SvgPicture.asset(
          svg,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }
}
