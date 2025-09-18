import 'package:flutter/material.dart';

class CustomListBuilder extends StatelessWidget {
  final List<String> imageCList;
  const CustomListBuilder({super.key, required this.imageCList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35),
      child: SizedBox(
        height: 132,
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 15,
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: imageCList.length,
            itemBuilder: (context, index) {
              final String imageItem = imageCList[index];
              return Container(
                width: 132,
                height: 132,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child:
                        Image.asset(imageItem.toString(), fit: BoxFit.cover)),
              );
            }),
      ),
    );
  }
}
