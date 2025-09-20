import 'package:cardinal_quotes/components/sound_bottom_bar.dart';
import 'package:cardinal_quotes/dummyData/sound_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class SoundSinglePage extends StatefulWidget {
  final SoundModel soundData;
  const SoundSinglePage({super.key, required this.soundData});

  @override
  State<SoundSinglePage> createState() => _SoundSinglePageState();
}

class _SoundSinglePageState extends State<SoundSinglePage> {
  double musicValue = 14;
  double volumeValue = 20;
  bool isVol = false;
  bool isPlaying = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sleep Sounds"),
        foregroundColor: CustomColors.cardWhiteColor,
        backgroundColor: CustomColors.primaryBgColor,
      ),
      backgroundColor: CustomColors.primaryBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35, top: 70),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 195,
                                child: Image.asset(
                                  widget.soundData.imagePath,
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
                        left: (MediaQuery.of(context).size.width - 70) / 2 - 40,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (isPlaying) {
                                isPlaying = false;
                              } else {
                                isPlaying = true;
                              }
                            });
                          },
                          icon: isPlaying
                              ? Icon(
                                  Icons.play_circle_outline_outlined,
                                  size: 60,
                                )
                              : Icon(
                                  Icons.pause_circle_outline_outlined,
                                  size: 60,
                                ),
                          color: Colors.white,
                        )),
                    isVol
                        ? Positioned(
                            right: 40,
                            bottom: 140,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: CustomColors.primaryBgColor,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Text(
                                  volumeValue.toStringAsFixed(0),
                                  style: CustomTextTheme.text16med.copyWith(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ))
                        : SizedBox(),
                    isVol
                        ? Positioned(
                            bottom: -10,
                            right: -10,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    trackHeight: 8,
                                    activeTrackColor: CustomColors.primaryColor,
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 0)),
                                child: Slider(
                                    min: 0,
                                    max: 100,
                                    value: volumeValue,
                                    onChangeEnd: (value) {
                                      setState(() {
                                        isVol = false;
                                      });
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        volumeValue = value;
                                      });
                                    }),
                              ),
                            ))
                        : SizedBox(),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isVol = !isVol;
                      });
                    },
                    child: Iconify(
                      Mdi.mic_none,
                      color: CustomColors.cardWhiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("04.00", style: CustomTextTheme.text16med),
                    Text("12.00", style: CustomTextTheme.text16med),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      trackHeight: 10,
                      activeTrackColor: CustomColors.primaryColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0)),
                  child: Slider(
                    // divisions: 100,
                    value: musicValue,
                    min: 0,
                    max: 100,

                    onChanged: (value) {
                      setState(() {
                        // print(value);
                        musicValue = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: SoundBottomBar(
                  soundData: widget.soundData,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
