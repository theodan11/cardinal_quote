import 'package:cardinal_quotes/components/category_card_builder.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class TopMenuCategory extends StatelessWidget {
  const TopMenuCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 35,
      ),
      child: Row(
        children: [
          Icon(
            Icons.menu,
            color: CustomColors.cardWhiteColor,
            size: 33,
          ),
          const SizedBox(
            width: 24,
          ),
          CategoryCardBuilder()
        ],
      ),
    );
  }
}
