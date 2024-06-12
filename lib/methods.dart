import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'constants.dart';

Widget stepPro({required int currentStep}) {
  return StepProgressIndicator(
    totalSteps: 4,
    currentStep: currentStep,
    roundedEdges: const Radius.circular(10),
    padding: 8,
    selectedColor: Colors.white,
    unselectedColor: const Color(0xFFBCBCBC),
  );
}

Widget text({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(left: 14.0),
    child: Text(
      text,
      style: style,
    ),
  );
}

Widget line(){
  return Container(
    height: Get.height * 0.070,
    width: 1,
    color: Colors.grey,
  );
}


