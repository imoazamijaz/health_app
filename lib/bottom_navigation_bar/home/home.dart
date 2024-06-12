import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/bottom_navigation_bar/home/tracker.dart';
import 'package:health_app/components/home_container.dart';
import 'package:health_app/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'LOGO',
          style: hStyle2.copyWith(fontSize: 22, fontWeight: FontWeight.w900),
        ),
        actions: const [
          Icon(CupertinoIcons.bell),
          Icon(CupertinoIcons.chat_bubble_2),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/logo.png',
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(1.00, 0.00),
                        end: Alignment(-1, 0),
                        colors: [Color(0xFF203178), Color(0xFF3D2A67)],
                      ),
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0xFF828dc4), width: 3)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: Get.width * 0.60,
                  height: Get.height * 0.055,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                )
              ],
            ),
            HomeContainer(
              gColor1: const Color(0xFF26C8A8),
              gColor2: const Color(0xFF00BBCA),
              onTap: () {
                Get.to(
                  const Tracker(),
                );
              },
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    right: 5,
                    top: 11,
                    child: Image.asset(
                      'images/tracker.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tracker',
                          style: containerHStyle,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,',
                          style: style.copyWith(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            HomeContainer(
              gColor1: const Color(0xFFF61DB1),
              gColor2: const Color(0xFFE92C81),
              onTap: () {},
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    left: 8,
                    top: 20,
                    child: Image.asset(
                      'images/Bitmap.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Exercise PLans',
                          style: containerHStyle,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,',
                          style: style.copyWith(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            HomeContainer(
              gColor1: const Color(0xFF203178),
              gColor2: const Color(0xFF3D2A67),
              onTap: () {},
              child: const Column(
                children: [
                  Text(
                    'E-Clinic',
                    style: containerHStyle,
                  )
                ],
              ),
            ),
            Text(
              'Recent Activities',
              style: hStyle2.copyWith(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 110,
                  height: 146,
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
                ),
                Container(
                  width: 110,
                  height: 146,
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
                ),
                Container(
                  width: 110,
                  height: 146,
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
