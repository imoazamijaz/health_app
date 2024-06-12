import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/components/app_bar.dart';
import 'package:health_app/constants.dart';

import 'day_screen.dart';

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Exercise',
        image: 'Trophy.svg',
      ),
      body: Padding(
        padding: authPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.80,
              width: Get.width,
              child: Center(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      ButtonsTabBar(
                        height: 40,
                        backgroundColor: themeColor,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 37),
                        //labelSpacing: 8,
                        //controller: _tabController,
                        radius: 15,
                        buttonMargin: const EdgeInsets.symmetric(horizontal: 8),
                        unselectedBackgroundColor: const Color(0xFFF8F8F8),
                        unselectedLabelStyle:
                            const TextStyle(color: Colors.black),
                        //labelStyle: containerStyle.copyWith(fontSize: 14),
                        tabs: const [
                          Tab(
                            text: "Day",
                          ),
                          Tab(
                            text: "Week",
                          ),
                          Tab(
                            text: 'Month',
                          ),
                        ],
                      ),
                      const Expanded(
                        child: TabBarView(
                          //controller: _tabController,
                          children: [
                            Day(),
                            Center(
                              child: Text('Week'),
                            ),
                            Center(
                              child: Text('Month'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
