import 'package:cardinal_quotes/component/card_squ.dart';
import 'package:cardinal_quotes/constants/category_card_model.dart';
import 'package:flutter/material.dart';
import 'package:cardinal_quotes/constants/category_card_data.dart';

class SquareCardBuilder extends StatelessWidget {
  const SquareCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: SizedBox(
        height: 460,
        child: GridView.builder(
            itemCount: cardSquareData.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 140,
                crossAxisSpacing: 20,
                // childAspectRatio: 1.4,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              CategoryCardModel cardItem = cardSquareData[index];
              return CardSquare(cardItem: cardItem);
            }),
      ),
    );
  }
}
