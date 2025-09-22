import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class WallpaperPopOption extends StatelessWidget {
  final String text;
  final String iconData;
  const WallpaperPopOption(
      {super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Iconify(
          iconData,
          color: CustomColors.primaryColor,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: CustomTextTheme.text15med.copyWith(
            color: CustomColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
