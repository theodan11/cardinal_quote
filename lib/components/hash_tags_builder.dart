import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class HashTagsBuilder extends StatelessWidget {
  final List<String> hashTags;
  const HashTagsBuilder({super.key, required this.hashTags});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 14,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: hashTags.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 4,
            );
          },
          itemBuilder: (context, index) {
            String singleHashTag = hashTags[index];
            // print(singleHashTag);
            return Text(
              "#$singleHashTag",
              style: CustomTextTheme.text12med,
            );
          },
        ));
  }
}
