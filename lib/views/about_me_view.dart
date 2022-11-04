import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:myresumeapp/core/constants/colors.dart';
import 'package:myresumeapp/core/constants/constants.dart';
import 'package:myresumeapp/core/constants/text_styles.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverStickyHeader(
            header: Container(
              height: 60,
              width: 700,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text('About Me',
                  style: kHeading2TextStyle.copyWith(color: kWhiteColor)),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    aboutMe,
                    style:
                        kSubtitleRegularTextStyle.copyWith(color: kWhiteColor),
                  ),
                ),
                childCount: 1,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: 60,
              color: Colors.black12,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Professional Experience',
                style: kHeading2TextStyle.copyWith(color: kWhiteColor),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Column(
                  children: [
                    Text(
                      professionalExperience1,
                      style: kSubtitleRegularTextStyle.copyWith(
                          color: kWhiteColor),
                    ),
                  ],
                ),
                childCount: 1,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: 60,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text('Skills',
                  style: kHeading3TextStyle.copyWith(color: kWhiteColor)),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Wrap(
                  spacing: 10,
                  children: [
                    Chip(
                        label: Text(
                      'Flutter (Dart)',
                      style: kBodyTextStyle,
                    )),
                    Chip(
                        label: Text(
                      'Git and git repositories',
                      style: kBodyTextStyle,
                    )),
                    Chip(
                        label: Text(
                      'Google play store',
                      style: kBodyTextStyle,
                    )),
                    Chip(
                        label: Text(
                      'Apple app store',
                      style: kBodyTextStyle,
                    )),
                    Chip(
                        label: Text(
                      'Leadership',
                      style: kBodyTextStyle,
                    )),
                    Chip(
                        label: Text(
                      'Communication',
                      style: kBodyTextStyle,
                    )),
                    Chip(
                        label: Text(
                      'Critical thinking',
                      style: kBodyTextStyle,
                    )),
                    Chip(
                        label: Text(
                      'Firebase',
                      style: kBodyTextStyle,
                    )),
                  ],
                ),
                childCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
