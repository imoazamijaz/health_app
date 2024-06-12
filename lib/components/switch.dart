import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../constants.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}
bool status = false;
class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 40,
      height: 22,
      toggleSize: 15,
      activeColor: themeColor,
      inactiveColor: Colors.grey.withOpacity(0.5),
      //showOnOff: true,
      activeTextColor: Colors.white,
      inactiveTextColor: Colors.white,
      value: status,
      onToggle: (val) {
        setState(
              () {
            status = val;
          },
        );
      },
    );
  }
}
