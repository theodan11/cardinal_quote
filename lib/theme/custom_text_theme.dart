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

  static final TextStyle text14med = GoogleFonts.raleway(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: CustomColors.primaryColor,
  );

  static final TextStyle text16med = GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: CustomColors.cardWhiteColor,
  );
  static final TextStyle text16bold = GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CustomColors.cardWhiteColor,
  );

  static final TextStyle text12bold = GoogleFonts.raleway(
    color: CustomColors.cardWhiteColor,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle text12med = GoogleFonts.raleway(
    color: CustomColors.cardWhiteColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
