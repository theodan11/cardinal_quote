import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function onPressFunc;
  const CustomFloatingActionButton({super.key, required this.onPressFunc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColors.cardWhiteColor,
          borderRadius: BorderRadius.circular(50)),
      width: 56,
      height: 56,
      child: IconButton(
        onPressed: () {
          // showBottomSheet(context);
          onPressFunc;
        },
        icon: Icon(
          Icons.add_to_photos_rounded,
          color: CustomColors.primaryColor,
          size: 30,
        ),
      ),
    );
  }
}
