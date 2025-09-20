import 'package:cardinal_quotes/components/sound_card.dart';
import 'package:cardinal_quotes/dummyData/sound_model.dart';
import 'package:cardinal_quotes/dummyData/sounds_dummy.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class SoundsPage extends StatelessWidget {
  const SoundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> hashTags = ["Ambition", "Inspiration", "Motivational"];
    return Scaffold(
      backgroundColor: CustomColors.primaryBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 35.0,
            right: 35.0,
            top: 35.0,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                SoundModel sound = sounds[index];
                return SoundCard(soundData: sound);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 35,
                );
              },
              itemCount: sounds.length,
            ),
          ),
        ),
      ),
    );
  }
}
