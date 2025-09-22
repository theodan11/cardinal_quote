import 'package:cardinal_quotes/components/category_card_builder.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

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
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: CustomColors.cardWhiteColor,
                      title: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                          ),
                        ),
                      ),
                      content: Stack(children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                text:
                                    "\"Peace comes from within. Do not seek it without.\"\n",
                                style: CustomTextTheme.text15med,
                                children: [
                                  TextSpan(
                                    text: "Buddha",
                                    style: CustomTextTheme.text15med
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 68,
                            ),
                            CategoryCardBuilder(
                              isVert: true,
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pushNamed('/auth');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Log Out",
                                      style: CustomTextTheme.text15med,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Iconify(
                                      Mdi.log_out,
                                      color: CustomColors.primaryColor,
                                    )
                                  ],
                                ))
                          ],
                        ),
                        Positioned(
                          left: 0,
                          top: 10,
                          child: Image.asset(
                            "assets/images/bird_left.png",
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 20,
                          child: Image.asset(
                            "assets/images/bird_right.png",
                          ),
                        )
                      ]),
                    );
                  });
            },
            icon: Icon(
              Icons.menu,
              size: 33,
            ),
            color: CustomColors.cardWhiteColor,
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
