import 'package:cardinal_quotes/pages/home/home_page.dart';
import 'package:cardinal_quotes/pages/quote/quote_page.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/iconoir.dart';

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
        body: pages[selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: onTap,
            selectedIconTheme: IconThemeData(
              // fill: 19,
              color: Colors.amber,
            ),
            items: [
              BottomNavigationBarItem(
                icon: selectedIndex == 0
                    ? Iconify(Iconoir.home_simple_door)
                    : Iconify(Iconoir.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: selectedIndex == 1
                      ? Iconify(
                          Iconoir.quote,
                          size: 32,
                        )
                      : Iconify(Iconoir.quote),
                  label: "setting"),
            ],
          ),
        ));
  }
}
