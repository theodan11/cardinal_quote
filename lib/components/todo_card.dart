import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: CustomColors.cardWhiteColor,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 14.0, left: 14, right: 24, bottom: 3),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.check_circle_outline_outlined,
                      color: CustomColors.primaryColor),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Napa",
                    style: CustomTextTheme.text16med.copyWith(
                      color: CustomColors.primaryColor,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Everyday At 6.00 Pm",
                  style: CustomTextTheme.text12med
                      .copyWith(color: CustomColors.primaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
