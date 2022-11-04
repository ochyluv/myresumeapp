import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myresumeapp/core/constants/colors.dart';
import 'package:myresumeapp/core/constants/spacing.dart';
import 'package:myresumeapp/core/constants/text_styles.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPinkColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 35,
              onPressed: onPressed,
              icon: FaIcon(icon),
            ),
            verticalSpaceTiny,
            Text(
              title,
              style: kBodyRegularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
