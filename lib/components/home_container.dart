import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContainer extends StatelessWidget {
  final Color gColor1;
  final Color gColor2;
  final Widget child;
  final VoidCallback  onTap;

  const HomeContainer(
      {super.key,
      required this.gColor1,
      required this.gColor2,
      required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width,
        height: Get.height * 0.14,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(-1.00, 0.00),
            end: const Alignment(1, 0),
            colors: [gColor1, gColor2],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}
