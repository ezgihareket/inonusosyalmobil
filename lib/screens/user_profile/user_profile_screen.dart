//20. ANASAYFADAKI KISIYE TIKLAYINCA ACILAN SAYFA

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/message.dart';
import 'package:insta_ui_kit/models/post.dart';
import 'package:insta_ui_kit/models/textpost.dart';
import 'package:insta_ui_kit/models/user.dart';
import 'package:insta_ui_kit/screens/messages/chat_screen.dart';
import 'package:insta_ui_kit/screens/profile/edit_profile_screen.dart';
import 'package:insta_ui_kit/screens/profile/followers_screen.dart';
import 'package:insta_ui_kit/screens/profile/following_screen.dart';
import 'package:insta_ui_kit/screens/settings/settings_screen.dart';
import 'package:insta_ui_kit/widgets/home/TextPostItem.dart';
import 'package:insta_ui_kit/widgets/home/post_item.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List myImages = [
    'assets/images/search_image_2.jpg',
    'assets/images/search_image_4.jpg',
    'assets/images/person_1.jpg',
    'assets/images/search_image_1.jpg',
    'assets/images/person_3.jpg',
    'assets/images/search_image_3.jpg',
    'assets/images/person_4.jpg',
    'assets/images/person_2.jpg',
  ];

  bool isFollowing;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    isFollowing = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          users[4].username,
          style: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6.0),
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: kMediumBlack,
              ),
              onPressed: () {
                print('more');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        primary: true,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FollowersScreen(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '15k',
                        style: GoogleFonts.muli(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Takipçiler',
                        style: GoogleFonts.muli(
                          color: Colors.black54,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(7.0),
                        width: 80.0,
                        height: 80.0,
                        padding: const EdgeInsets.all(2),
                        /*decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.pinkAccent,
                            width: 2.0,
                          ),
                        ),*/
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            users[4].profileImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      /*Positioned(
                        bottom: 3,
                        right: 3,
                        height: 25,
                        width: 25,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.green,
                                Colors.orange,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.add,
                            color: kWhite,
                            size: 18,
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FollowingScreen(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '799',
                        style: GoogleFonts.muli(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Takip Edilen',
                        style: GoogleFonts.muli(
                          color: Colors.black54,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              users[4].fullName,
              style: GoogleFonts.muli(
                color: Colors.black,
                fontSize: 14.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              child: Text(
                users[4].bio,
                textAlign: TextAlign.center,
                style: GoogleFonts.muli(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                isFollowing
                    ? Container(
                        width: size.width * 0.35,
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              isFollowing = !isFollowing;
                            });
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                              side: BorderSide(
                                color: kLightBlack,
                                width: 1,
                              )),
                          color: Colors.transparent,
                          child: Text(
                            'Takip Ediliyor',
                            style: GoogleFonts.muli(
                              color: Colors.black87,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        width: size.width * 0.35,
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              isFollowing = !isFollowing;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          color: kColorPrimary,
                          child: Text(
                            'Takip Et',
                            style: GoogleFonts.muli(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                Container(
                  width: size.width * 0.35,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                            message: messages[1],
                          ),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: lightBtn,
                    child: Text(
                      'Mesaj',
                      style: GoogleFonts.muli(
                        color: Colors.black87,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            /*Container(
              height: 100.0,
              width: size.width,
              padding: EdgeInsets.all(0),
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                itemCount: stories.length + 1,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                shrinkWrap: false,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(7.0),
                          width: 60.0,
                          height: 60.0,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.07),
                              width: 2.5,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Icon(
                              Icons.add,
                              size: 25,
                            ),
                          ),
                        ),
                        Text(
                          'New',
                          style: GoogleFonts.muli(
                            color: Colors.black87,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    );
                  }
                  return GestureDetector(
                    onTap: () {
                      print('Story View');
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyStoriesScreen(
                            story: stories[index - 1],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(7.0),
                          width: 60.0,
                          height: 60.0,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            // border: Border.all(
                            //   color: Colors.pinkAccent,
                            //   width: 2.0,
                            // ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.asset(
                              stories[index - 1].images[0],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          stories[index - 1].title,
                          style: GoogleFonts.muli(
                            color: Colors.black87,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),*/
            Divider(),

            _buildtextpost(),
            /*StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: myImages.length,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              itemBuilder: (BuildContext context, int index) => ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  myImages[index],
                  fit: BoxFit.cover,
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),*/
            // TabBar(
            //   controller: _tabController,
            //   indicatorColor: Colors.transparent,
            //   onTap: (value) {
            //     setState(() {
            //       _tabController.animateTo(value);
            //     });
            //   },
            //   tabs: [
            //     Tab(
            //       icon: Icon(
            //         Icons.widgets,
            //         color: _tabController.index == 0 ? kDarkBlack : kLightBlack,
            //       ),
            //     ),
            //     Tab(
            //       icon: Icon(
            //         Icons.bookmark_border,
            //         color: _tabController.index == 1 ? kDarkBlack : kLightBlack,
            //       ),
            //     ),
            //   ],
            // ),
            // TabBarView(
            //   controller: _tabController,
            //   physics: NeverScrollableScrollPhysics(),
            //   children: [

            //     StaggeredGridView.countBuilder(
            //       crossAxisCount: 4,
            //       itemCount: myImages.length,
            //       scrollDirection: Axis.vertical,
            //       physics: NeverScrollableScrollPhysics(),
            //       shrinkWrap: true,
            //       padding: const EdgeInsets.symmetric(
            //         vertical: 10,
            //         horizontal: 15,
            //       ),
            //       itemBuilder: (BuildContext context, int index) => ClipRRect(
            //         borderRadius: BorderRadius.circular(15),
            //         child: Image.asset(
            //           myImages[index],
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       staggeredTileBuilder: (int index) =>
            //           new StaggeredTile.count(2, index.isEven ? 3 : 2),
            //       mainAxisSpacing: 10.0,
            //       crossAxisSpacing: 10.0,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildpost() {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: kDarkWhite,
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 10.0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: posts.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return PostItem(
            size: size,
            post: posts[index],
          );
        },
      ),
    );
  }

  Widget _buildtextpost() {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: kDarkWhite,
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 10.0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: textposts.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TextPostItem(
            size: size,
            textPost: textposts[index],
          );
        },
      ),
    );
  }
}
