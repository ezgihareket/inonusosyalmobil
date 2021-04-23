// 5.ANASAYFA KISMI

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/dtos/login_dto.dart';
import 'package:insta_ui_kit/models/current_user.dart';
import 'package:insta_ui_kit/models/post.dart';
import 'package:insta_ui_kit/models/textpost.dart';
import 'package:insta_ui_kit/models/user.dart';
import 'package:insta_ui_kit/pages/create_post_container.dart';
import 'package:insta_ui_kit/pages/profile_page.dart';
import 'package:insta_ui_kit/pages/search_page.dart';
import 'package:insta_ui_kit/screens/group/group_screen.dart';
import 'package:insta_ui_kit/screens/messages/messages_screen.dart';
import 'package:insta_ui_kit/widgets/home/TextPostItem.dart';
import 'package:insta_ui_kit/widgets/home/post_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'activity_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  /*void getValues() async{
    print('Get values');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String username = sharedPreferences.getString('username');
    String password = sharedPreferences.getString('password');

    print('username: ${username}');
    print('password: ${password}');
  }*/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'İnönü Sosyal',
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: kDarkBlack,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6.0),
            child: IconButton(
              icon: Icon(
                Icons.mail_rounded,
                color: kMediumBlack,
              ),
              onPressed: () {
                print('message');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagesScreen(),
                  ),
                );
              },
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6.0),
            child: IconButton(
              icon: Icon(
                Icons.group_add,
                color: kMediumBlack,
              ),
              tooltip: 'Gruplar',
              onPressed: () {
                print('group');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroupScreen(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6.0),
            child: IconButton(
              icon: Icon(
                Icons.search_rounded,
                color: kMediumBlack,
              ),
              onPressed: () {
                print('ara');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),



      body: RefreshIndicator(
        onRefresh: () async {
          return null;
        },
        displacement: size.height * 0.1,
        child: SingleChildScrollView(

          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              CreatePostContainer(currentUser: currentUser),
              //*****!!!***********************************************************
              /*Container(
                height: 100.0,
                color: Colors.red,
                width: size.width,
                padding: EdgeInsets.all(0),
                /*child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  itemCount: users.length,
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
                            'My Story',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoryViewScreen(
                              user: users[index],
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
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 2.0,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                users[index].profileImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            users[index].fullName.split(' ')[0],
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
                ),*/
              ),*/
              //*****!!!*******************************************************************
              SizedBox(
                height: 10.0,
              ),
              _buildpost(),
              _buildtextpost(),
              _buildpost(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildpost() {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
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
    );
  }

  Widget _buildtextpost() {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
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
    );
  }

  @override
  bool get wantKeepAlive => true;
}
