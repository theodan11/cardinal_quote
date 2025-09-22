import 'package:cardinal_quotes/components/custom_button.dart';
import 'package:cardinal_quotes/components/custom_floating_action_button.dart';
import 'package:cardinal_quotes/components/quote_card.dart';
import 'package:cardinal_quotes/dummyData/quotes_list.dart';
import 'package:cardinal_quotes/dummyData/quotes_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class SoulPage extends StatelessWidget {
  const SoulPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> feelingList = [
      {
        "feelingTitle": "Awesome",
        "emoji": Mdi.smiley,
      },
      {
        "feelingTitle": "Good",
        "emoji": Mdi.smiley,
      },
      {
        "feelingTitle": "Neutral",
        "emoji": Mdi.line_scan,
      },
      {
        "feelingTitle": "Bad",
        "emoji": Mdi.emoji_cry,
      },
      {
        "feelingTitle": "Terrible",
        "emoji": Mdi.emoji_dead,
      },
      {
        "feelingTitle": "Other",
        "emoji": Mdi.wave,
      },
    ];

    return Scaffold(
        backgroundColor: CustomColors.primaryBgColor,
        appBar: AppBar(
          title: Text(
            "Soul Check-in",
            style: CustomTextTheme.text16med,
          ),
          backgroundColor: CustomColors.primaryBgColor,
        ),
        floatingActionButton: CustomFloatingActionButton(
          onPressFunc: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: CustomColors.cardWhiteColor,
                    content: Container(
                      height: 176,
                      decoration: BoxDecoration(
                        color: CustomColors.cardWhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "How Are You Feeling Today?",
                            style: CustomTextTheme.text16med.copyWith(
                              color: CustomColors.primaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 250,
                            height: 140,
                            child: GridView.builder(
                                itemCount: feelingList.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3),
                                itemBuilder: (context, index) {
                                  Map<String, dynamic> feelingSingle =
                                      feelingList[index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      _showFeelingDialogue(context);
                                    },
                                    child: Row(
                                      children: [
                                        Iconify(
                                          feelingSingle['emoji'],
                                          color: CustomColors.primaryColor,
                                          size: 14,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          feelingSingle['feelingTitle'],
                                          style: CustomTextTheme.text12med
                                              .copyWith(
                                                  color: CustomColors
                                                      .primaryColor),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .72,
              child: ListView.separated(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final QuotesModel quote = quotes[index];
                    return QuoteCard(quote: quote);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 25);
                  },
                  itemCount: quotes.length),
            ),
          ),
        ));
  }

  Future<void> _showFeelingDialogue(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: CustomColors.cardWhiteColor,
            content: Container(
              height: 280,
              decoration: BoxDecoration(color: CustomColors.cardWhiteColor),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Share something with us.",
                    style: CustomTextTheme.text16med.copyWith(
                      color: CustomColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 230, 219, 219),
                    ),
                    child: TextField(
                      cursorColor: CustomColors.primaryColor,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        buttonText: "Cancel",
                        isOutline: true,
                      ),
                      CustomButton(
                        buttonText: "Continue",
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
