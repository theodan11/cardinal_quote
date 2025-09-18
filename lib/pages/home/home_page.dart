import 'package:cardinal_quotes/components/square_card_builder.dart';
import 'package:cardinal_quotes/components/top_menu_category.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.primaryBgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              TopMenuCategory(),
              const SizedBox(
                height: 30,
              ),
              SquareCardBuilder()
            ],
          ),
        ));
  }
}
