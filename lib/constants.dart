import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const themeColor = Color(0xFF26C8A8);
const themeColorTwo = Color(0xFFE92C81);

final style =
    GoogleFonts.dmSans(color: Colors.white, fontWeight: FontWeight.w700);

const hStyle = TextStyle(
    fontSize: 45,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: 'LemonMilk.otf');
const hStyle2 = TextStyle(
    fontSize: 22,
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontFamily: 'LemonMilk.otf');
const containerHStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: 'LemonMilk.otf');

//icon gradient #253078, #402865
const authPadding = EdgeInsets.symmetric(vertical: 15.0, horizontal: 18);
const iconColor = Color(0xFF253078);

final buttonDecoration = ShapeDecoration(
  gradient: const LinearGradient(
    begin: Alignment(1.00, -0.02),
    end: Alignment(-1, 0.02),
    colors: [Color(0xFF26C8A8), Color(0xFF00BBCA)],
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
);
