import 'package:cardinal_quotes/pages/home/home_page.dart';
import 'package:cardinal_quotes/pages/quote/quote_page.dart';
import 'package:cardinal_quotes/pages/soul/soul_page.dart';
import 'package:cardinal_quotes/pages/sounds/sounds_page.dart';
import 'package:cardinal_quotes/pages/top/top_page.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/lucide.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/mingcute.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/uil.dart';

class NavigatorBottom extends StatefulWidget {
  const NavigatorBottom({super.key});

  @override
  State<NavigatorBottom> createState() => _NavigatorBottomState();
}

class _NavigatorBottomState extends State<NavigatorBottom> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(),
      SoundsPage(),
      SoulPage(),
      TopPage(),
      QuotePage(),
    ];

    void Function(int)? onTap(int value) {
      setState(() {
        // print(value);
        selectedIndex = value;
      });
    }

    return Scaffold(
        backgroundColor: CustomColors.primaryBgColor,
        // backgroundColor: const Color.fromARGB(0, 200, 221, 202),
        body: pages[selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: CustomColors.cardWhiteColor,
            // backgroundColor: const Color.fromARGB(0, 30, 31, 30),
            unselectedItemColor: CustomColors.primaryColor,

            currentIndex: selectedIndex,
            selectedItemColor: CustomColors.primaryColor,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

            onTap: onTap,
            selectedIconTheme: IconThemeData(
              // fill: 19,
              color: Colors.amber,
            ),
            items: [
              BottomNavigationBarItem(
                icon: selectedIndex == 0
                    ? Iconify(
                        MaterialSymbols.home_rounded,
                        color: CustomColors.primaryColor,
                      )
                    : Iconify(
                        MaterialSymbols.home_outline_rounded,
                        color: CustomColors.primaryColor,
                      ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: selectedIndex == 1
                    ? Iconify(
                        Bx.bxs_music,
                        color: CustomColors.primaryColor,
                      )
                    : Iconify(
                        Bx.music,
                        color: CustomColors.primaryColor,
                      ),
                label: "Sounds",
              ),
              BottomNavigationBarItem(
                icon: selectedIndex == 2
                    ? Iconify(
                        Mdi.user_heart,
                        color: CustomColors.primaryColor,
                      )
                    : Iconify(
                        Mdi.user_heart_outline,
                        color: CustomColors.primaryColor,
                      ),
                label: "Soul",
              ),
              BottomNavigationBarItem(
                icon: selectedIndex == 3
                    ? Iconify(
                        Mdi.format_quote_close,
                        color: CustomColors.primaryColor,
                      )
                    : Iconify(
                        Mdi.format_quote_close_outline,
                        color: CustomColors.primaryColor,
                      ),
                label: "Top",
              ),
              BottomNavigationBarItem(
                  icon: selectedIndex == 4
                      ? Iconify(
                          Mdi.more_vert,
                        )
                      : Iconify(
                          Mdi.more_vert,
                          color: CustomColors.primaryColor,
                        ),
                  label: "settings"),
            ],
          ),
        ));
  }
}
