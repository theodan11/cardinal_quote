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
              Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: SizedBox(
                    height: 132,
                    child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        itemCount: ImageList.wallpaper.length,
                        itemBuilder: (context, index) {
                          final String imageItem = ImageList.wallpaper[index];
                          return Container(
                            width: 132,
                            height: 132,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Image.asset(imageItem),
                          );
                        }),
                  )),
            ],
          ),
        ));
  }
}
