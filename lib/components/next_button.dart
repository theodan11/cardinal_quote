import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final bool canSave;
  const NextButton({super.key, required this.canSave});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        // border: Border.all(color: CustomColors.primaryColor),
        color: canSave ? CustomColors.primaryColor : CustomColors.btnDisColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Next",
          style: canSave
              ? CustomTextTheme.text16med
              : CustomTextTheme.text16med
                  .copyWith(color: CustomColors.cardWhiteColor),
        ),
      ),
    );
  }
}
