import 'package:cardinal_quotes/components/quote_card.dart';
import 'package:cardinal_quotes/dummyData/quotes_list.dart';
import 'package:cardinal_quotes/dummyData/quotes_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.primaryBgColor,
        appBar: AppBar(
          title: Text(
            "Top Quotes",
            style: CustomTextTheme.text16med,
          ),
          backgroundColor: CustomColors.primaryBgColor,
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
}
