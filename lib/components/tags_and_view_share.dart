import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class TagsAndViewShare extends StatelessWidget {
  final List<String> hastTags;
  const TagsAndViewShare({super.key, required this.hastTags});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 14,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: hastTags.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 4,
              );
            },
            itemBuilder: (context, index) {
              String singleHashTag = hastTags[index];
              // print(singleHashTag);
              return Text(
                "#$singleHashTag",
                style: CustomTextTheme.text12med,
              );
            },
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            // views
            Icon(
              Icons.remove_red_eye,
              size: 20,
              color: CustomColors.cardWhiteColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "567.54k",
              style: CustomTextTheme.text12med,
            ),
            Spacer(),
            // share
            Iconify(
              Mdi.share,
              size: 20,
              color: CustomColors.cardWhiteColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "Share",
              style: CustomTextTheme.text12med,
            ),
            Spacer(),
            // downloads
            Iconify(
              Mdi.download,
              size: 20,
              color: CustomColors.cardWhiteColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "Download",
              style: CustomTextTheme.text12med,
            ),
            Spacer(),
            // save
            Icon(
              Icons.file_copy_sharp,
              size: 20,
              color: CustomColors.cardWhiteColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "Save",
              style: CustomTextTheme.text12med,
              softWrap: true,
            ),
          ],
        )
      ],
    );
  }
}
