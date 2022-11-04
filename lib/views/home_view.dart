import 'package:flutter/material.dart';
import 'package:myresumeapp/core/constants/spacing.dart';
import 'package:myresumeapp/core/constants/text_styles.dart';
import 'package:myresumeapp/views/about_me_view.dart';
import 'package:myresumeapp/views/contact_me_view.dart';
import 'package:myresumeapp/widgets/background.dart';
import 'package:myresumeapp/widgets/detail_card.dart';
import 'package:page_transition/page_transition.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // const Placeholder(
              //   color: Colors.grey,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hi, I\'m Queen Ameh',
                      style: kHeading1TextStyle,
                    ),
                  ),
                  Text(
                    'Ochyluv',
                    style: kHeading2TextStyle,
                  ),
                  Text(
                    'Mobile Developer',
                    style: kHeading3TextStyle,
                  )
                ],
              ),
              verticalSpaceLarge,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.scale,
                        duration: const Duration(seconds: 1),
                        alignment: Alignment.bottomLeft,
                        child: const AboutMeView(),
                      ),
                    ),
                    child: const DetailCard(
                      icon: Icons.arrow_back,
                      title: 'About\n Me',
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.scale,
                        duration: const Duration(seconds: 1),
                        alignment: Alignment.bottomRight,
                        child: const ContactMeView(),
                      ),
                    ),
                    child: const DetailCard(
                      title: 'Contact\n Me',
                      icon: Icons.arrow_forward,
                      reverse: true,
                    ),
                  ),
                ],
              ),
              verticalSpaceLarge,
            ],
          ),
        ),
      ),
    );
  }
}
