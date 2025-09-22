import 'package:cardinal_quotes/components/custom_floating_action_button.dart';
import 'package:cardinal_quotes/components/journal_card.dart';
import 'package:cardinal_quotes/dummyData/journal_dummy_list.dart';
import 'package:cardinal_quotes/dummyData/journal_model.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sacred Journals"),
        foregroundColor: CustomColors.cardWhiteColor,
        backgroundColor: CustomColors.primaryBgColor,
        actions: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: CustomColors.cardWhiteColor,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.search, color: CustomColors.primaryColor),
          ),
          SizedBox(
            width: 35,
          )
        ],
      ),
      backgroundColor: CustomColors.primaryBgColor,
      floatingActionButton: CustomFloatingActionButton(
        onPressFunc: () {
          Navigator.of(context).pushNamed('/journal-create');
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 180,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      JournalModel journalSingle = journals[index];
                      return JournalCard(
                          title: journalSingle.title,
                          journalBody: journalSingle.journalBody,
                          colorBody: journalSingle.colorBody);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 18,
                      );
                    },
                    itemCount: journals.length),
              )),
        ),
      ),
    );
  }
}
