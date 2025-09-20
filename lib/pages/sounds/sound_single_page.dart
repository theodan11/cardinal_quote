import 'package:cardinal_quotes/components/sound_bottom_bar.dart';
import 'package:cardinal_quotes/dummyData/sound_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class SoundSinglePage extends StatelessWidget {
  final SoundModel soundData;
  const SoundSinglePage({super.key, required this.soundData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 35.0, left: 35, top: 150),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 332,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: CustomColors.cardWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: SizedBox(
                          height: 195,
                          child: Image.asset(
                            soundData.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset('assets/images/sound_wave.png'),
                    ],
                  ),
                ),
              ),
              Positioned(
                  // bottom: 160,
                  top: 195 / 2,
                  // height: 60,
                  left: (MediaQuery.of(context).size.width - 70) / 2 - 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_outline_outlined,
                      size: 60,
                    ),
                    color: Colors.white,
                  )),
              // Positioned(
              //   bottom: 60,
              //   left: 35,
              //   child: SoundBottomBar(
              //     soundData: soundData,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
