import 'package:cardinal_quotes/components/tags_and_view_share.dart';
import 'package:cardinal_quotes/dummyData/quotes_model.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final QuotesModel quote;
  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 228,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(quote.imagePath),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TagsAndViewShare(hastTags: quote.hashTags)
      ],
    );
  }
}
