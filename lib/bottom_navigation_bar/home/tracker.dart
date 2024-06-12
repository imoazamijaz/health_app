import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:health_app/bottom_navigation_bar/home/exercise.dart';
import 'package:health_app/bottom_navigation_bar/home/tracker/calcualor.dart';
import 'package:health_app/bottom_navigation_bar/home/tracker/weight_track.dart';
import 'package:health_app/components/home_container.dart';

import '../../constants.dart';
import '../../work.dart';

class Tracker extends StatefulWidget {
  const Tracker({super.key});

  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Tracker',
          style: hStyle2.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: authPadding,
        child: Column(
          children: [
            HomeContainer(
              gColor1: const Color(0xFF26C8A8),
              gColor2: const Color(0xFF00BBCA),
              onTap: () {
                Get.to(
                  const WeightTrack(),
                );
              },
              child: reusableRow(text: 'Weight', image: 'weight.svg'),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            HomeContainer(
              gColor1: const Color(0xFFF61DB1),
              gColor2: const Color(0xFFE92C81),
              onTap: () {
                Get.to(
                  const Exercise(),
                );
              },
              child: reusableRow(text: 'Exercise', image: 'exercise.svg'),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            HomeContainer(
              gColor1: const Color(0xFF203178),
              gColor2: const Color(0xFF3D2A67),
              onTap: () {
                Get.to(
                   const MenuPopClass(),
                );
              },
              child: reusableRow(text: 'Food', image: 'food.svg'),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            HomeContainer(
              gColor1: const Color(0xFFFF6844),
              gColor2: const Color(0xFFE6274B),
              onTap: () {
                Get.to(
                  const Calculator(),
                );
              },
              child: reusableRow(text: 'Calculator', image: 'calculator.svg'),
            ),
          ],
        ),
      ),
    );
  }

  Widget reusableRow({required String text, required String image}) {
    return Padding(
      padding: authPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: containerHStyle.copyWith(
                fontSize: 28, fontStyle: FontStyle.italic),
          ),
          SvgPicture.asset('images/$image')
        ],
      ),
    );
  }
}
