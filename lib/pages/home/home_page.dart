import 'package:cardinal_quotes/component/category_card_builder.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.primaryBgColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: CustomColors.cardWhiteColor,
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    CategoryCardBuilder()
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
