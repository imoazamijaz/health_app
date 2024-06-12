import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../components/app_bar.dart';
import '../../../constants.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

const List<String> list = <String>[
  "ft'" 'in"',
  'cm',
];

class _CalculatorState extends State<Calculator> {
  String dropdownValue = list.first;
  double _feetPointer = 5;
  double _inchesPointer = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Calculator',
        image: 'history.svg',
      ),
      body: Padding(
        padding: authPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    container(),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    container(),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    container(),
                  ],
                ),
                Container(
                  width: Get.width * 0.38,
                  height: Get.height * 0.57,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Height',
                              style: hStyle2.copyWith(
                                fontSize: 16,
                                color: const Color(0xFF2A3894),
                              ),
                            ),
                            Container(
                              width: 55,
                              height: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.50),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  isExpanded: true,
                                  iconSize: 12,
                                  elevation: 16,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.white,
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(
                                      () {
                                        dropdownValue = value!;
                                      },
                                    );
                                  },
                                  items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        if (dropdownValue == "ft'" 'in"')
                          SfLinearGauge(
                            animationDuration: 2000,
                            maximum: 9,
                            orientation: LinearGaugeOrientation.vertical,
                            minorTicksPerInterval: 4,
                            animateAxis: true,
                            animateRange: true,
                            ranges: const [],
                            barPointers: [
                              LinearBarPointer(
                                value: _feetPointer,
                                animationDuration: 3000,
                                animationType: LinearAnimationType.bounceOut,
                              ),
                            ],
                            markerPointers: [
                              LinearShapePointer(
                                value: _feetPointer,
                                height: 25,
                                width: 25,
                                shapeType:
                                    LinearShapePointerType.invertedTriangle,
                                dragBehavior: LinearMarkerDragBehavior.free,
                                onChanged: (double newValue) {
                                  setState(
                                    () {
                                      _feetPointer = newValue;
                                      debugPrint(
                                          "$_feetPointer feetPointer${newValue}newValue");
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        if (dropdownValue == 'cm')
                          SfLinearGauge(
                            animationDuration: 2000,
                            maximum: 200,
                            orientation: LinearGaugeOrientation.vertical,
                            minorTicksPerInterval: 4,
                            animateAxis: true,
                            animateRange: true,
                            ranges: const [],
                            barPointers: [
                              LinearBarPointer(
                                value: _inchesPointer,
                                animationDuration: 3000,
                                animationType: LinearAnimationType.bounceOut,
                              ),
                            ],
                            markerPointers: [
                              LinearShapePointer(
                                value: _inchesPointer,
                                height: 25,
                                width: 25,
                                shapeType:
                                    LinearShapePointerType.invertedTriangle,
                                dragBehavior: LinearMarkerDragBehavior.free,
                                onChanged: (double newValue) {
                                  setState(
                                    () {
                                      _inchesPointer = newValue;
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Results',
                  style: hStyle2.copyWith(
                    fontSize: 24,
                    color: const Color(0xFFE92C81),
                  ),
                ),
                const Icon(CupertinoIcons.share)
              ],
            ),
            SizedBox(
              width: Get.width,
              height: Get.height * 0.20,
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
                          '27.4',
                          style: hStyle2.copyWith(fontSize: 36),
                        ),
                        Text(
                          'Over Weight',
                          style: hStyle2.copyWith(fontSize: 12),
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

  Widget container() {
    return Container(
      width: Get.width * 0.50,
      height: Get.height * 0.18,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
