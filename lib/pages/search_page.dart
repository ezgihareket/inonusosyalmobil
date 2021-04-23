// 7.ARAMA SAYFASI

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/screens/group/group_screen.dart';
import 'package:insta_ui_kit/screens/profile/followers_screen.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List searchImages = [
    'assets/images/search_image_1.jpg',
    'assets/images/search_image_2.jpg',
    'assets/images/search_image_4.jpg',
    'assets/images/search_image_3.jpg',
    'assets/images/person_1.jpg',
    'assets/images/person_2.jpg',
    'assets/images/search_image_1.jpg',
    'assets/images/person_3.jpg',
    'assets/images/search_image_2.jpg',
    'assets/images/search_image_3.jpg',
    'assets/images/person_4.jpg',
    'assets/images/search_image_4.jpg',
  ];

  List tabs = [

    {
      'icon': Icons.person,
      'name': 'Kişiler',
    },
    {
      'icon': Icons.image,
      'name': 'Resimler',
    },

    {
      'icon': Icons.bookmark_border,
      'name': 'Kaydedilenler',
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Ara',
          style: GoogleFonts.muli(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: kDarkBlack,
          ),
        ),
        leading: BackButton(
          color: kMediumBlack,
        ),

      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            // height: 100,
            padding: const EdgeInsets.only(bottom: 15),
            child: SafeArea(
              bottom: false,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.search,
                              maxLines: 1,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(15),
                                hintText: 'Ara',
                                hintStyle: GoogleFonts.muli(
                                  color: Colors.black54,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                isDense: true,
                                border: InputBorder.none,
                              ),
                              style: GoogleFonts.muli(
                                color: Colors.black87,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(25.0),
                              // radius: 25.0,
                              onTap: () {
                                print("search");
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                margin: EdgeInsets.all(0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black87,
                                  size: 25.0,
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
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    print('clicked $index');
                    if (index == 0) {
                      //store
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FollowersScreen(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          tabs[index]['icon'],
                          size: 20.0,
                          color: kDarkBlack,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          tabs[index]['name'],
                          style: GoogleFonts.muli(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: tabs.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              // shrinkWrap: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          /*Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: searchImages.length,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              itemBuilder: (BuildContext context, int index) => ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  searchImages[index],
                  fit: BoxFit.cover,
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
          )*/
        ],
      ),
    );
  }
}
