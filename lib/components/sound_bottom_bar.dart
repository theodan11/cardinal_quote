import 'package:cardinal_quotes/components/tags_and_view_share.dart';
import 'package:cardinal_quotes/dummyData/sound_model.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class SoundBottomBar extends StatelessWidget {
  final SoundModel soundData;
  const SoundBottomBar({super.key, required this.soundData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Music: ${soundData.name}", style: CustomTextTheme.text12bold),
        SizedBox(
          height: 5,
        ),
        TagsAndViewShare(hastTags: soundData.hashTags)
      ],
    );
  }
}
