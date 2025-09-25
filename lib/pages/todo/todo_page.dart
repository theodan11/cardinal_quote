import 'package:cardinal_quotes/components/todo_card.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:cardinal_quotes/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryBgColor,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: CustomColors.cardWhiteColor,
            borderRadius: BorderRadius.circular(50)),
        width: 56,
        height: 56,
        child: IconButton(
          onPressed: () {
            // showBottomSheet(context);
            showBottomSheet(context);
          },
          icon: Icon(
            Icons.add_to_photos_rounded,
            color: CustomColors.primaryColor,
            size: 30,
          ),
        ),
      ),
      appBar: AppBar(
        foregroundColor: CustomColors.cardWhiteColor,
        backgroundColor: CustomColors.primaryBgColor,
        title: Row(
          children: [
            Text(
              "To-dos",
              style: CustomTextTheme.text16med,
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset('assets/images/todo_bird_left.png')),
            Positioned(
                bottom: 0,
                left: 120,
                child: Image.asset('assets/images/todo_bird_right.png')),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35.0, vertical: 17),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return TodoCard();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 4,
                      );
                    },
                    itemCount: 6)),
          ],
        ),
      )),
    );
  }

  Future<void> showBottomSheet(BuildContext context) async {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(10),
      )),
      context: context,
      builder: (context) {
        return SafeArea(
          child: Container(
            height: 230,
            decoration: BoxDecoration(
              color: CustomColors.cardWhiteColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  10,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: CustomTextTheme.text16med
                              .copyWith(color: CustomColors.primaryColor),
                        ),
                      ),
                      Text(
                        "New To-does",
                        style: CustomTextTheme.text16med.copyWith(
                            color: CustomColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Next",
                        style: CustomTextTheme.text16med.copyWith(
                            color: CustomColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: CustomColors.primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: CustomColors.cardWhiteColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "New To-does",
                            style: CustomTextTheme.text16med,
                          ),
                          Spacer(),
                          Icon(
                            Icons.access_time_filled_sharp,
                            color: CustomColors.cardWhiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: CustomColors.primaryColor),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 26),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Repeat", style: CustomTextTheme.text14med),
                              Spacer(),
                              Text("Everyday",
                                  style: CustomTextTheme.text14med),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 16,
                              )
                            ],
                          ),
                          Divider(
                            color: CustomColors.primaryColor,
                            thickness: 0.3,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("End Repeat",
                                  style: CustomTextTheme.text14med),
                              Spacer(),
                              Text("After 1 Months",
                                  style: CustomTextTheme.text14med),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 16,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
