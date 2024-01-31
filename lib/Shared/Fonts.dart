import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle regularText(
      {double fontSize = 16.0, Color color = Colors.black}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle boldText(
      {double fontSize = 16.0, Color color = Colors.black}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle semiBoldText(
      {double fontSize = 16.0, Color color = Colors.black}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w600, // semi-bold
    );
  }
}
