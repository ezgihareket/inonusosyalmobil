//26.POSTA TIKLAYINCA ACILAN YORUMLARIN GOZUKTUGU DETAY SAYFASI

import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/activity.dart';
import 'package:insta_ui_kit/models/post.dart';
import 'package:insta_ui_kit/screens/user_profile/user_profile_screen.dart';

import 'likes_screen.dart';

class PostScreen extends StatefulWidget {
  final Post post;

  const PostScreen({Key key, this.post}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool isLiked;

  @override
  void initState() {
    super.initState();

    isLiked = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Gönderi',
          style: GoogleFonts.poppins(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: kDarkBlack,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              children: [
                Container(
                  width: size.width * 0.95,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: kOffWhite,
                  ),
                  child: Column(
                    children: [
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  width: 45.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      widget.post.profileImage,
                                      fit: BoxFit.cover,
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
                                      widget.post.username,
                                      style: GoogleFonts.muli(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      widget.post.location,
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
                            IconButton(
                              onPressed: () {
                                print('more');
                              },
                              iconSize: 28,
                              splashColor: kOffWhite,
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                isLiked = true;
                              });
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  widget.post.image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                          borderRadius:
                                              BorderRadius.circular(25),
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
                                            /*GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isLiked = !isLiked;
                                                });
                                              },
                                              child: Icon(
                                                isLiked
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: Colors.black,
                                                size: 24.0,
                                              ),
                                            ),*/
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Text(
                                              widget.post.likes,
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
                                      widget.post.comments,
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.post.description,
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width * 0.95,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: kOffWhite,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Yorumlar',
                          style: GoogleFonts.muli(
                            color: Colors.black,
                            fontSize: 14.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 45.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      widget.post.comment[index].profileImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.post.comment[index].username,
                                        style: GoogleFonts.muli(
                                          color: Colors.black87,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        widget.post.comment[index].comment,
                                        style: GoogleFonts.muli(
                                          color: Colors.black45,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        widget.post.comment[index].timestamp,
                                        style: GoogleFonts.muli(
                                          color: Colors.black26,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                        itemCount: widget.post.comment.length,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BlurryContainer(
                      blur: 10.0,
                      bgColor: Colors.teal.shade700,
                      // height: 50.0,
                      width: MediaQuery.of(context).size.width - 125,
                      child: TextFormField(
                        // textAlignVertical: TextAlignVertical.center,
                        // textAlign: TextAlign.start,
                        maxLines: 3,
                        minLines: 1,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(0),
                          hintText: 'Yorum Ekle',
                          hintStyle: GoogleFonts.muli(
                            color: Colors.white70,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                          isDense: true,
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.muli(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          FocusScope.of(context).unfocus();
                        },
                        child: BlurryContainer(
                          width: 50.0,
                          height: 50.0,
                          blur: 15.0,
                          bgColor: Colors.teal.shade700,
                          padding: const EdgeInsets.all(0),
                          child: Icon(
                            FontAwesomeIcons.solidPaperPlane,
                            color: kOffWhite,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
