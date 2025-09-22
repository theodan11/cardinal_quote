import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class JournalCard extends StatelessWidget {
  final String title;
  final String journalBody;
  final Color colorBody;
  const JournalCard(
      {super.key,
      required this.title,
      required this.journalBody,
      required this.colorBody});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 130),
      child: Container(
        decoration: BoxDecoration(
            color: colorBody, borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(title, style: CustomTextTheme.text15med),
              SizedBox(
                height: 6,
              ),
              Text(journalBody,
                  style: CustomTextTheme.text12med
                      .copyWith(color: CustomColors.primaryColor))
            ],
          ),
        ),
      ),
    );
  }
}
