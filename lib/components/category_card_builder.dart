import 'package:cardinal_quotes/components/category_card.dart';
import 'package:cardinal_quotes/dummyData/category_card_model.dart';
import 'package:cardinal_quotes/dummyData/category_card_data.dart';
import 'package:flutter/material.dart';

class CategoryCardBuilder extends StatelessWidget {
  final bool isVert;
  const CategoryCardBuilder({super.key, this.isVert = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isVert
          ? MediaQuery.of(context).size.width <= 400
              ? MediaQuery.of(context).size.height * 0.5
              : MediaQuery.of(context).size.height * 0.6
          : 52,
      width: MediaQuery.of(context).size.width * 0.70,
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return isVert
                ? const SizedBox(
                    height: 20,
                  )
                : const SizedBox(
                    width: 20,
                  );
          },
          itemCount: categoryList.length,
          scrollDirection: isVert ? Axis.vertical : Axis.horizontal,
          itemBuilder: (context, index) {
            CategoryCardModel categoryItem = categoryList[index];
            return CategoryCard(categoryItem: categoryItem);
          }),
    );
  }
}
