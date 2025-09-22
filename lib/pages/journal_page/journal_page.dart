import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.cardWhiteColor,
        actions: [
          Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: CustomColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Icon(Icons.menu, color: CustomColors.cardWhiteColor)),
          SizedBox(
            width: 24,
          )
        ],
      ),
      backgroundColor: CustomColors.cardWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/journal_1_top.png',
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/journal_1_bot.png',
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Title",
                          hintStyle: CustomTextTheme.text18bold,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        maxLines: 8,
                        decoration: InputDecoration(
                          hintText: "Note",
                          hintStyle: CustomTextTheme.text14med,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 35,
              bottom: 28,
              child: Container(
                width: MediaQuery.of(context).size.width - 70,
                height: 75,
                decoration: BoxDecoration(
                    color: CustomColors.primaryColor,
                    borderRadius: BorderRadius.circular(52)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Iconify(
                      Mdi.camera,
                      color: CustomColors.cardWhiteColor,
                    ),
                    Iconify(
                      Mdi.pen,
                      color: CustomColors.cardWhiteColor,
                    ),
                    Iconify(
                      Mdi.attach_file,
                      color: CustomColors.cardWhiteColor,
                    ),
                    Iconify(
                      Mdi.menu,
                      color: CustomColors.cardWhiteColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
