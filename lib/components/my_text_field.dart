import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final String svg;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextEditingController controller;

  const MyTextField(
      {Key? key,
      required this.labelText,
      required this.controller,
      this.suffixIcon,
      required this.obscureText,
      required this.svg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          //label: Text(labelText),
          labelStyle: const TextStyle(color: Colors.grey),
          fillColor: Colors.grey.shade100,
          hintText: labelText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(svg),
          ),
          suffixIcon: Icon(suffixIcon),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: themeColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
        ),
      ),
    );
  }
}
