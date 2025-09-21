import 'package:cardinal_quotes/components/sound_bottom_bar.dart';
import 'package:cardinal_quotes/dummyData/sound_model.dart';
import 'package:cardinal_quotes/pages/sounds/sound_single_page.dart';
import 'package:flutter/material.dart';

class SoundCard extends StatelessWidget {
  final SoundModel soundData;
  const SoundCard({super.key, required this.soundData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 305,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          SoundSinglePage(soundData: soundData)));
                },
                child: SizedBox(
                  height: 228,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      soundData.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SoundBottomBar(soundData: soundData)
            ],
          ),
        )
      ],
    );
  }
}
