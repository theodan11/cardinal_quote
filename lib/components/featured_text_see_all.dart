import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class FeaturedTextSeeAll extends StatelessWidget {
  final String label;
  final VoidCallback func;
  const FeaturedTextSeeAll(
      {super.key, required this.label, required this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            softWrap: true,
            style: CustomTextTheme.text16med,
          ),
          GestureDetector(
            onTap: func,
            child: Text(
              "See All >",
              style: CustomTextTheme.text14med
                  .copyWith(color: CustomColors.cardWhiteColor),
            ),
          )
        ],
      ),
    );
  }
}
