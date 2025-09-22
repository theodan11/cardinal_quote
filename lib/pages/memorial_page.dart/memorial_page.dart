import 'package:cardinal_quotes/components/custom_button.dart';
import 'package:cardinal_quotes/components/custom_text_field.dart';
import 'package:cardinal_quotes/components/quote_card.dart';
import 'package:cardinal_quotes/dummyData/quotes_list.dart';
import 'package:cardinal_quotes/dummyData/quotes_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class MemorialPage extends StatelessWidget {
  const MemorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.primaryBgColor,
        appBar: AppBar(
          title: Text(
            "Memorial Cards",
            style: CustomTextTheme.text16med,
          ),
          backgroundColor: CustomColors.primaryBgColor,
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
              color: CustomColors.cardWhiteColor,
              borderRadius: BorderRadius.circular(50)),
          width: 56,
          height: 56,
          child: IconButton(
            onPressed: () {
              _popUp(context);
            },
            icon: Icon(
              Icons.add_to_photos_rounded,
              color: CustomColors.primaryColor,
              size: 30,
            ),
          ),
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

  Future<dynamic> _popUp(context) async {
    TextEditingController te = TextEditingController();
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: CustomColors.cardWhiteColor,
            content: Container(
              width: MediaQuery.of(context).size.width - 70,
              height: 430,
              decoration: BoxDecoration(color: CustomColors.cardWhiteColor),
              child: Column(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 252,
                    height: 142,
                    decoration: BoxDecoration(
                        // color: CustomColors.cardWhiteOpaColor,
                        color: const Color.fromARGB(255, 230, 219, 219),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: CustomColors.primaryColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Add a photo",
                            style: CustomTextTheme.text16med
                                .copyWith(color: CustomColors.primaryColor))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  CustomTextField(hintText: "Name", tecontroller: te),
                  SizedBox(
                    height: 18,
                  ),
                  CustomTextField(hintText: "Date Of Birth", tecontroller: te),
                  SizedBox(
                    height: 18,
                  ),
                  CustomTextField(hintText: "Date Of Birth", tecontroller: te),
                  SizedBox(
                    height: 18,
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
