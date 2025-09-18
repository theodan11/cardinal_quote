import 'package:cardinal_quotes/constants/category_card_data.dart';
import 'package:cardinal_quotes/constants/category_card_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryBgColor,
      body: Center(
        child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              CategoryCardModel categoryItem = categoryList[index];
              return Text(categoryItem.label);
            }),
      ),
    );
  }
}
