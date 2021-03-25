// 8.BILDIRIM SAYFASI

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/activity.dart';
import 'package:insta_ui_kit/models/user.dart';
import 'package:insta_ui_kit/widgets/activity/activity_following_item.dart';
import 'package:insta_ui_kit/widgets/activity/activity_like_comment_item.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage>
    with
        AutomaticKeepAliveClientMixin<ActivityPage>,
        SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Bildirimler',
          style: GoogleFonts.muli(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: kDarkBlack,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            height: 55,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              children: [
                Container(
                  width: size.width * 0.35,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _tabController.animateTo(0);
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: _tabController.index == 0 ? kDarkBlack : kWhite,
                    child: Text(
                      'Tüm Bildirimler',
                      style: GoogleFonts.muli(
                        color: _tabController.index == 0 ? kWhite : kDarkBlack,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: size.width * 0.25,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _tabController.animateTo(1);
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: _tabController.index == 1 ? kDarkBlack : kWhite,
                    child: Text(
                      'Beğeniler',
                      style: GoogleFonts.muli(
                        color: _tabController.index == 1 ? kWhite : kDarkBlack,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: size.width * 0.3,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _tabController.animateTo(2);
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: _tabController.index == 2 ? kDarkBlack : kWhite,
                    child: Text(
                      'Yorumlar',
                      style: GoogleFonts.muli(
                        color: _tabController.index == 2 ? kWhite : kDarkBlack,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: size.width * 0.3,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _tabController.animateTo(3);
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: _tabController.index == 3 ? kDarkBlack : kWhite,
                    child: Text(
                      'Takip Edenler',
                      style: GoogleFonts.muli(
                        color: _tabController.index == 3 ? kWhite : kDarkBlack,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              // shrinkWrap: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        'Yeni (20)',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return activities[index].type == 'POST'
                              ? ActivityLikeCommentItem(
                                  activity: activities[index],
                                )
                              : ActivityFollowingItem(
                                  activity: activities[index],
                                );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                        itemCount: activities.length,
                        shrinkWrap: true,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        'Yeni (2)',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ActivityLikeCommentItem(
                            activity: likesActivities[index],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                        itemCount: likesActivities.length,
                        shrinkWrap: true,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        'Yeni (4)',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ActivityLikeCommentItem(
                            activity: commentsActivities[index],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                        itemCount: commentsActivities.length,
                        shrinkWrap: true,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        'Yeni (4)',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ActivityFollowingItem(
                            activity: followersActivities[index],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                        itemCount: followersActivities.length,
                        shrinkWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
