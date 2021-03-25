//28.MESAJ SAYFASINDAKI KALEME TIKLAYINCA MESAJ OLUSTURMA EKRANI

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
import 'package:insta_ui_kit/widgets/messages/create_chat_item.dart';

import 'chat_screen.dart';

class CreateChatScreen extends StatefulWidget {
  @override
  _CreateChatScreenState createState() => _CreateChatScreenState();
}

class _CreateChatScreenState extends State<CreateChatScreen> {
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
                      'Mesaj Yaz',
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
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 0.0),
                    decoration: BoxDecoration(
                      color: kWhite,
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
                              print('search');
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
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                itemBuilder: (context, index) {
                  return CreateChatItem(
                    user: users[index],
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              message: messages[index],
                            ),
                          ));
                    },
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
                itemCount: users.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
