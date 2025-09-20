import 'package:cardinal_quotes/components/category_card.dart';
import 'package:cardinal_quotes/constants/category_card_model.dart';
import 'package:cardinal_quotes/constants/category_card_data.dart';
import 'package:flutter/material.dart';

class CategoryCardBuilder extends StatelessWidget {
  const CategoryCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: MediaQuery.of(context).size.width * 0.70,
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 20,
            );
          },
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            CategoryCardModel categoryItem = categoryList[index];
            return CategoryCard(categoryItem: categoryItem);
          }),
    );
  }
}
