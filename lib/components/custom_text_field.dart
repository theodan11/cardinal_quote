import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const CustomTextField(
      {super.key, required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: CustomTextTheme.text14med,
        enabledBorder: OutlineInputBorder(
          gapPadding: 20,
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: CustomColors.primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 20,
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: CustomColors.primaryColor,
          ),
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
