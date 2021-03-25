// 4. NAVBAR KISMI

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/pages/activity_page.dart';
import 'package:insta_ui_kit/pages/home_page.dart';
import 'package:insta_ui_kit/pages/profile_page.dart';
import 'package:insta_ui_kit/pages/search_page.dart';
import 'package:insta_ui_kit/screens/messages/messages_screen.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  PageController _pageController;
  List<Widget> pages = [
    HomePage(),
    MessagesScreen(),
    ActivityPage(),
    ProfilePage(),
  ];

  int _selectedPage;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);
    _selectedPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              children: pages,
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            height: Platform.isAndroid ? 65.0 : 85.0,
            padding: Platform.isIOS
                ? const EdgeInsets.only(bottom: 10)
                : const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    _pageController.jumpToPage(0);
                    setState(() {
                      _selectedPage = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.home,
                      color: _selectedPage == 0 ? kDarkBlack : kLightBlack,
                      size: 25.0,
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    _pageController.jumpToPage(1);
                    setState(() {
                      _selectedPage = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.mail_outline_rounded,
                      color: _selectedPage == 1 ? kDarkBlack : kLightBlack,
                      size: 25.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Post');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => AddPost(),
                    //   ),
                    // );
                  },
                  child: Container(
                    height: size.width * 0.095,
                    width: size.width * 0.095,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: kWhite,
                      size: 25.0,
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    _pageController.jumpToPage(2);
                    setState(() {
                      _selectedPage = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: _selectedPage == 2 ? kDarkBlack : kLightBlack,
                      size: 25.0,
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    _pageController.jumpToPage(3);
                    setState(() {
                      _selectedPage = 3;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.person,
                      color: _selectedPage == 3 ? kDarkBlack : kLightBlack,
                      size: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
