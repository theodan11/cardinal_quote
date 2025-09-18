import 'package:flutter/material.dart';
import 'package:cardinal_quotes/constants/category_card_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';

class CategoryCard extends StatelessWidget {
  final CategoryCardModel categoryItem;
  const CategoryCard({super.key, required this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 120,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: CustomColors.cardWhiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Row(
          children: [
            Image.asset(
              categoryItem.iconPath,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "${categoryItem.label[0].toUpperCase()}${categoryItem.label.substring(1)}",
              style: CustomTextTheme.text15med,
            ),
          ],
        ),
      ),
    );
  }
}
