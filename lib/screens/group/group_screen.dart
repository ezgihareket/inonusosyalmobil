import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/group.dart';
import 'package:insta_ui_kit/screens/group/group_product_screen.dart';
import 'package:insta_ui_kit/widgets/group/group_product_item.dart';

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  List tabs = [
    {
      'name': 'Bilgisayar',
    },
    {
      'name': 'İnşaat',
    },
    {
      'name': 'Tıp',
    },
    {
      'name': 'Elektrik Elektronik',
    },
  ];
  List groups = [
    {
      'icon': Icons.computer,
      'name': 'Algoritma Analizi',
    },
    {
      'icon': Icons.computer,
      'name': 'Mikrobilgisayar',
    },
    {
      'icon': Icons.computer,
      'name': 'Veri Yapıları',
    },
    {
      'icon': Icons.computer,
      'name': 'Mat2',
    },
    {
      'icon': Icons.computer,
      'name': 'Lineer Cebir',
    },
    {
      'icon': Icons.computer,
      'name': 'Bitirme',
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            padding:
                const EdgeInsets.only(bottom: 15, left: 15, right: 15, top: 5),
            child: SafeArea(
              bottom: false,
              child: Row(
                children: [
                  BackButton(),
                  Text(
                    'Gruplar',
                    style: GoogleFonts.muli(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 15,
              ),
              children: [
                Container(
                  height: 55,
                  child: ListView.separated(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          print('clicked $index');
                          if (index == 0) {
                            //store
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: index == 0 ? kDarkBlack : kWhite,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Center(
                            child: Text(
                              tabs[index]['name'],
                              style: GoogleFonts.muli(
                                color: index == 0 ? Colors.white : Colors.black,
                                fontSize: 13.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
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
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    'Gruplar',
                    style: GoogleFonts.muli(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 100,
                  width: size.width,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    itemBuilder: (context, index) => Container(
                      child: Container(
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              groups[index]['icon'],
                            ),
                            Text(
                              groups[index]['name'],
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
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: groups.length,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
               Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    'Algoritma Analizi Grupları',
                    style: GoogleFonts.muli(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
                  itemBuilder: (context, index) => Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GroupProductScreen(
                                groupProduct: groupProducts[index],
                              ),
                            ));
                      },
                      child: GroupProductItem(
                        groupProduct: groupProducts[index],
                      ),
                    ),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: groupProducts.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
