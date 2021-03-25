//14.TAKIP ETTIKLERIMIZ LISTESI SAYFASI1

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/chat.dart';
import 'package:insta_ui_kit/models/like.dart';
import 'package:insta_ui_kit/models/message.dart';
import 'package:insta_ui_kit/models/user.dart';
import 'package:insta_ui_kit/widgets/home/like_item.dart';
import 'package:insta_ui_kit/widgets/messages/chat_item.dart';
import 'package:insta_ui_kit/widgets/user_profile/following_item.dart';

class FollowingScreen extends StatefulWidget {
  @override
  FollowingScreenState createState() => FollowingScreenState();
}

class FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              padding: const EdgeInsets.only(
                  bottom: 10, left: 15, right: 15, top: 5),
              child: SafeArea(
                bottom: false,
                child: Row(
                  children: [
                    BackButton(),
                    Text(
                      'Takip Edilen',
                      style: GoogleFonts.muli(
                        color: Colors.black87,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                itemBuilder: (context, index) {
                  return FollowingItem(
                    following: followingList[index],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
                itemCount: followingList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
