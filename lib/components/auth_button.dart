import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final bool isSignUp;
  final String buttonText;
  const AuthButton(
      {super.key, required this.isSignUp, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.primaryColor),
        color: isSignUp ? CustomColors.primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: isSignUp
              ? CustomTextTheme.text16med
              : CustomTextTheme.text16med
                  .copyWith(color: CustomColors.primaryColor),
        ),
      ),
    );
  }
}
