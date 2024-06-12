import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:health_app/bottom_navigation_bar/home/tracker/stepTracker.dart';
import 'package:health_app/bottom_navigation_bar/home/tracker/weight_track.dart';
import 'package:health_app/components/custom_button.dart';

class Day extends StatefulWidget {
  const Day({super.key});

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          customContainer(
            text1: 'Walk',
            text2: '4083',
            text3: 'steps',
            image: 'walk.svg',
            onTap: () {
              Get.to(
                 const StepTracker(),
              );
            },
          ),
          customContainer(
              text1: 'Kcal',
              text2: '326',
              text3: 'total burn',
              image: 'kcal.svg',
              onTap: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomContainer(
                  text1: 'Sleep', text2: '480', text3: 'min', image: 'bed.svg'),
              bottomContainer(
                  text1: 'Water',
                  text2: '10',
                  text3: 'Glasses',
                  image: 'water.svg'),
            ],
          ),
          CustomButton(title: '+ Create a challenge', onTap: () {})
        ],
      ),
    );
  }

  Widget bottomContainer(
      {required String text1,
      required String text2,
      required String text3,
      required String image}) {
    return Container(
      width: Get.width * 0.42,
      height: Get.height * 0.21,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            SvgPicture.asset('images/$image'),
            SizedBox(
              width: Get.width * 0.01,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: thisStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  text2,
                  style: thisStyle.copyWith(
                    fontSize: 26,
                  ),
                ),
                Text(
                  text3,
                  style: thisStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget customContainer({
    required String text1,
    required String text2,
    required String text3,
    required String image,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width,
        height: Get.height * 0.15,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              SvgPicture.asset('images/$image'),
              SizedBox(
                width: Get.width * 0.01,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text1,
                    style: thisStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    text2,
                    style: thisStyle.copyWith(
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    text3,
                    style: thisStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
