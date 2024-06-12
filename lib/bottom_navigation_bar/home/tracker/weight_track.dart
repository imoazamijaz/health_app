import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:health_app/components/app_bar.dart';
import '../../../constants.dart';
import '../../../methods.dart';

class WeightTrack extends StatefulWidget {
  const WeightTrack({super.key});

  @override
  State<WeightTrack> createState() => _WeightTrackState();
}

final thisStyle = style.copyWith(
    fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);

class _WeightTrackState extends State<WeightTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Weight Tracker',
        image: 'Edit.svg',
      ),
      body: Padding(
        padding: authPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Get.width * 0.44,
                  height: Get.height * 0.21,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-0.71, 0.71),
                      end: Alignment(0.71, -0.71),
                      colors: [Color(0xFF26C8A8), Color(0xFF00BBCA)],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: reusableColumn(
                      text1: 'Current Weight',
                      text2: '172.4',
                      image: 'currentweight.svg'),
                ),
                Container(
                  width: Get.width * 0.44,
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
                  child: reusableColumn(
                      text1: 'Weight Goal',
                      text2: '158.8',
                      image: 'weightgoal.svg',
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Calculator',
                  style: hStyle2.copyWith(fontSize: 24),
                ),
                const Icon(CupertinoIcons.share)
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.12,
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
                padding: authPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    calColumn(text1: 'BMI', text2: '24.2', image: 'bmi.svg'),
                    line(),
                    calColumn(text1: 'BMR', text2: '24.2', image: 'bmr.svg'),
                    line(),
                    calColumn(
                        text1: 'Body Fat', text2: '24.2', image: 'boyFat.svg'),
                    line(),
                    calColumn(
                        text1: 'Macros', text2: '24.2', image: 'macros.svg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            SizedBox(
              width: Get.width,
              height: Get.height * 0.25,
              child: CircleProgressBar(
                foregroundColor: const Color(0xFF2A3893),
                backgroundColor: const Color(0x4C253078),
                strokeWidth: 15,
                animationDuration: const Duration(seconds: 3),
                value: 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '92 %',
                          style: hStyle2.copyWith(fontSize: 48),
                        ),
                        Text(
                          'of 158.9lb',
                          style: hStyle2.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget calColumn(
      {required String text1, required String text2, required String image}) {
    return Column(
      children: [
        Text(
          text1,
          style: thisStyle,
        ),
        SvgPicture.asset('images/$image'),
        Text(
          text2,
          style: thisStyle.copyWith(fontWeight: FontWeight.w700),
        )
      ],
    );
  }

  Widget reusableColumn(
      {required String text1,
      required String text2,
      required String image,
      Color? color}) {
    return Padding(
      padding: authPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('images/$image'),
          Text(
            text1,
            style: style.copyWith(fontSize: 15, color: color),
          ),
          Text(
            text2,
            style: style.copyWith(fontSize: 32, color: color),
          ),
          Text(
            'lb',
            style: style.copyWith(
              fontSize: 15,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
