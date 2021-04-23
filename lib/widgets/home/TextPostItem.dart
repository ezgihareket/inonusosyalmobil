import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/textpost.dart';
import 'package:insta_ui_kit/screens/posts/likes_screen.dart';
import 'package:insta_ui_kit/screens/posts/textpost_screen.dart';
import 'package:insta_ui_kit/screens/user_profile/user_profile_screen.dart';

class TextPostItem extends StatelessWidget {
  const TextPostItem({
    Key key,
    @required this.size,
    @required this.textPost,
  }) : super(key: key);

  final Size size;
  final TextPost textPost;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TextPostScreen(
              textPost: textPost,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        width: size.width * 0.95,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: kOffWhite,
        ),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserProfileScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40.0,
                        height: 40.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            textPost.profileImage,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            textPost.username,
                            style: GoogleFonts.muli(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            textPost.location,
                            style: GoogleFonts.muli(
                              color: kLightBlack,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 28,
                  splashColor: kOffWhite,
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textPost.text,
                      style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                /*GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextPostScreen(
                          textPost: textPost,
                        ),
                      ),
                    );
                  },
                  onDoubleTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        post.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),*/
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LikesScreen(),
                                )),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: kDarkWhite,
                                shape: BoxShape.rectangle,
                              ),
                              child: Row(
                                children: [
                                  FlutterReactionButton(
                                    onReactionChanged:
                                        (reaction, index) {
                                      print('reaction selected index: $index');
                                    },
                                    reactions: <Reaction>[
                                      Reaction(
                                        previewIcon: SizedBox(
                                          child: Image.asset(
                                              'assets/images/like.png',
                                              height: 30,
                                              width: 30),
                                        ),
                                        icon: SizedBox(
                                          width: 24.0,
                                          child: Image.asset(
                                              'assets/images/like.png'),
                                        ),
                                      ),
                                      Reaction(
                                        previewIcon: SizedBox(
                                          child: Image.asset(
                                              'assets/images/heart.png',
                                              height: 30,
                                              width: 30),
                                        ),
                                        icon: SizedBox(
                                          width: 24.0,
                                          child: Image.asset(
                                              'assets/images/heart.png'),
                                        ),
                                      ),
                                      Reaction(
                                        previewIcon: SizedBox(
                                          child: Image.asset(
                                              'assets/images/smile.png',
                                              height: 30,
                                              width: 30),
                                        ),
                                        icon: SizedBox(
                                          width: 24.0,
                                          child: Image.asset(
                                              'assets/images/smile.png'),
                                        ),
                                      ),
                                      Reaction(
                                        previewIcon: SizedBox(
                                          child: Image.asset(
                                              'assets/images/smiling.png',
                                              height: 30,
                                              width: 30),
                                        ),
                                        icon: SizedBox(
                                          width: 24.0,
                                          child: Image.asset(
                                              'assets/images/smiling.png'),
                                        ),
                                      ),
                                      Reaction(
                                        previewIcon: SizedBox(
                                          child: Image.asset(
                                              'assets/images/thinking.png',
                                              height: 30,
                                              width: 30),
                                        ),
                                        icon: SizedBox(
                                          width: 24.0,
                                          child: Image.asset(
                                              'assets/images/thinking.png'),
                                        ),
                                      ),
                                      Reaction(
                                        previewIcon: SizedBox(
                                          child: Image.asset(
                                              'assets/images/sad.png',
                                              height: 30,
                                              width: 30),
                                        ),
                                        icon: SizedBox(
                                          width: 24.0,
                                          child: Image.asset(
                                              'assets/images/sad.png'),
                                        ),
                                      ),
                                    ],
                                    initialReaction: Reaction(
                                      icon: SizedBox(
                                        width: 24.0,
                                        height: 24.0,
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                      ),

                                    ),
                                    /*selectedReaction: Reaction(
                                      icon: SizedBox(
                                        width: 24.0,
                                        height: 24.0,
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),*/
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    textPost.likes,
                                    style: GoogleFonts.muli(
                                      color: Colors.black,
                                      fontSize: 13.5,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Icon(
                            Icons.chat,
                            color: Colors.black,
                            size: 23.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            textPost.comments,
                            style: GoogleFonts.muli(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10,
                            sigmaY: 10,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            color: kOffWhite,
                            child: Icon(Icons.bookmark_border),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
