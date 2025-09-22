import 'package:cardinal_quotes/dummyData/category_card_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class CardSquare extends StatelessWidget {
  final CategoryCardModel cardItem;
  const CardSquare({super.key, required this.cardItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(cardItem.route);
      },
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: CustomColors.cardWhiteColor,
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                cardItem.iconPath,
              ),
              Text(
                "${cardItem.label[0].toUpperCase()}${cardItem.label.substring(1)}",
                style: CustomTextTheme.text14med,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
