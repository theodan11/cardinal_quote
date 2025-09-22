import 'package:cardinal_quotes/components/hash_tags_builder.dart';
import 'package:cardinal_quotes/components/wallpaper_pop_option.dart';
import 'package:cardinal_quotes/dummyData/wallpaper_list.dart';
import 'package:cardinal_quotes/dummyData/wallpaper_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class WallpaperPage extends StatelessWidget {
  const WallpaperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryBgColor,
      appBar: AppBar(
        title: Text("Wallpapers"),
        foregroundColor: CustomColors.cardWhiteColor,
        backgroundColor: CustomColors.primaryBgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
                itemCount: wallpaperList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
                itemBuilder: (context, index) {
                  WallpaperModel wallpaper = wallpaperList[index];

                  return SizedBox(
                    // decoration: BoxDecoration(color: Colors.black54),
                    width: 168,
                    height: 400,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 110,
                                height: 14,
                                child: HashTagsBuilder(
                                    hashTags: wallpaper.hashTags)),
                            SizedBox(
                              width: 3,
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor:
                                            CustomColors.cardWhiteColor,
                                        content: Container(
                                          // width: ,
                                          height: 144,
                                          decoration: BoxDecoration(
                                            color: CustomColors.cardWhiteColor,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              WallpaperPopOption(
                                                  iconData: Mdi.eye,
                                                  text: wallpaper.views),
                                              WallpaperPopOption(
                                                  iconData: Mdi.ribbon,
                                                  text: "Save"),
                                              WallpaperPopOption(
                                                  iconData: Mdi.share,
                                                  text: "Share"),
                                              WallpaperPopOption(
                                                  iconData: Mdi.download,
                                                  text: "Download"),
                                              WallpaperPopOption(
                                                  iconData: Mdi.download,
                                                  text: "Set"),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Icon(
                                Icons.more_vert,
                                size: 14,
                                color: CustomColors.cardWhiteColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 160,
                            height: 117,
                            child: Image.asset(
                              wallpaper.imagePath,
                              fit: BoxFit.cover,
                              // width: 160,
                              // height: 165,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })),
      ),
    );
  }
}
