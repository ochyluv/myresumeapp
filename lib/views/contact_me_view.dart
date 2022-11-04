import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myresumeapp/core/constants/colors.dart';
import 'package:myresumeapp/core/constants/text_styles.dart';
import 'package:myresumeapp/widgets/background.dart';
import 'package:myresumeapp/widgets/social_card.dart';
import 'package:url_launcher/url_launcher.dart';

enum Contact { linkedin, github, emailAddress, twitter }

class ContactMeView extends StatelessWidget {
  const ContactMeView({super.key});

  Future<void> _launchUrl(Contact contact) async {
    switch (contact) {
      case Contact.linkedin:
        await launchUrl(Uri.parse('https://www.linkedin.com/in/ochyluv/'));
        break;
      case Contact.github:
        await launchUrl(Uri.parse('https://github.com/ochyluv'));
        break;
      case Contact.emailAddress:
        await launchUrl(Uri.parse('mailto:queenochanya58@gmail.com'));
        break;
      case Contact.twitter:
        await launchUrl(Uri.parse('https://twitter.com/ochy_luv'));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Contact Me',
                style: kHeading1TextStyle.copyWith(color: kWhiteColor),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 10,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: SocialCard(
                        icon: FontAwesomeIcons.linkedin,
                        title: 'Linkedin',
                        onPressed: () => _launchUrl(Contact.linkedin),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: SocialCard(
                        icon: FontAwesomeIcons.github,
                        title: 'Github',
                        onPressed: () => _launchUrl(Contact.github),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: SocialCard(
                        icon: FontAwesomeIcons.twitter,
                        title: 'Twitter',
                        onPressed: () => _launchUrl(Contact.twitter),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: SocialCard(
                        icon: FontAwesomeIcons.envelope,
                        title: 'Email Address',
                        onPressed: () => _launchUrl(Contact.emailAddress),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
