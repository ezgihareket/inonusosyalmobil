//12.AYARLAR SAYFASI

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreen createState() => _SettingsScreen();
}

class _SettingsScreen extends State<SettingsScreen> {
  bool darkThemeEnabled;

  @override
  void initState() {
    super.initState();

    darkThemeEnabled = false;
  }

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
                  bottom: 15, left: 15, right: 15, top: 5),
              child: SafeArea(
                bottom: false,
                child: Row(
                  children: [
                    BackButton(),
                    Text(
                      'Ayarlar',
                      style: GoogleFonts.muli(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: kDarkBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              children: [
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.notifications_none,
                        color: kDarkBlack,
                        size: 22.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Bildirimler',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lock_outline,
                        color: kDarkBlack,
                        size: 22.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Gizlilik',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.shieldAlt,
                        color: kDarkBlack,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Güvenlik',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: kDarkBlack,
                        size: 22.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hesap',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.help_outline,
                        color: kDarkBlack,
                        size: 22.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Yardım',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: kDarkBlack,
                        size: 22.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hakkında',
                        style: GoogleFonts.muli(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 15,
                // ),
                // Container(
                //   height: 50.0,
                //   decoration: BoxDecoration(
                //     color: kWhite,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                //   child: Row(
                //     children: [
                //       Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisSize: MainAxisSize.max,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Icon(
                //             Icons.color_lens_outlined,
                //             color: kDarkBlack,
                //             size: 22.0,
                //           ),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Text(
                //             'Dark Theme',
                //             style: GoogleFonts.muli(
                //               color: Colors.black87,
                //               fontSize: 14.0,
                //               fontWeight: FontWeight.w700,
                //             ),
                //           ),
                //         ],
                //       ),
                //       Spacer(),
                //       FlutterSwitch(
                //         width: 50.0,
                //         height: 25.0,
                //         valueFontSize: 14.0,
                //         toggleSize: 10.0,
                //         value: darkThemeEnabled,
                //         activeColor: Theme.of(context).primaryColor,
                //         inactiveColor: Colors.black38,
                //         borderRadius: 12.0,
                //         padding: 8.0,
                //         onToggle: (val) {
                //           setState(() {
                //             darkThemeEnabled = val;
                //           });
                //         },
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
