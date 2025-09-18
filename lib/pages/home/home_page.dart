import 'package:cardinal_quotes/components/custom_list_builder.dart';
import 'package:cardinal_quotes/components/featured_text_see_all.dart';
import 'package:cardinal_quotes/components/square_card_builder.dart';
import 'package:cardinal_quotes/components/top_menu_category.dart';
import 'package:cardinal_quotes/constants/image_list.dart';
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
              SquareCardBuilder(),
              const SizedBox(
                height: 56,
              ),
              FeaturedTextSeeAll(label: "Featured Wallpaper", func: () {}),
              const SizedBox(
                height: 14,
              ),
              CustomListBuilder(imageCList: ImageList.wallpaper),
              const SizedBox(
                height: 56,
              ),
              FeaturedTextSeeAll(label: "Featured Quote", func: () {}),
              const SizedBox(
                height: 14,
              ),
              CustomListBuilder(imageCList: ImageList.quote),
              const SizedBox(
                height: 56,
              ),
              FeaturedTextSeeAll(label: "Featured Memory", func: () {}),
              const SizedBox(
                height: 14,
              ),
              CustomListBuilder(imageCList: ImageList.memCard),
            ],
          ),
        ));
  }
}
