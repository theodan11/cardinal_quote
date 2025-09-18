import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme {
  CustomTextTheme();
  static final TextStyle text15med = GoogleFonts.raleway(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: CustomColors.primaryColor,
  );
}
