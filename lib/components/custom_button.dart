import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool isOutline;
  final String buttonText;
  const CustomButton(
      {super.key, required this.buttonText, this.isOutline = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        border: isOutline
            ? Border.all(color: CustomColors.primaryColor)
            : Border.all(color: Colors.transparent),
        // color: canSave ? CustomColors.primaryColor : CustomColors.btnDisColor,
        color: isOutline ? Colors.transparent : CustomColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          buttonText,

          style: isOutline
              ? CustomTextTheme.text16med
                  .copyWith(color: CustomColors.primaryColor)
              : CustomTextTheme.text16med,
          // style: canSave
          //     ? CustomTextTheme.text16med
          //     : CustomTextTheme.text16med
          //         .copyWith(color: CustomColors.cardWhiteColor),
        ),
      ),
    );
  }
}
