import 'package:flutter/material.dart';
import 'package:myresumeapp/core/constants/colors.dart';
import 'package:myresumeapp/core/constants/text_styles.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    Key? key,
    required this.title,
    required this.icon,
    this.reverse = false,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final bool reverse;
  @override
  Widget build(BuildContext context) {
    final widgetList = [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kBlackColor,
        ),
        width: 40,
        height: 40,
        child: Icon(
          icon,
          color: kWhiteColor,
          size: 20,
        ),
      ),
      Text(
        title,
        style: kHeading3TextStyle.copyWith(color: kWhiteColor),
      ),
    ];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kBlackColor.withOpacity(0.7),
      ),
      width: 170,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: reverse ? widgetList.reversed.toList() : widgetList,
      ),
    );
  }
}
