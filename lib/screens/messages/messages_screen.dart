//6. ANASAYFADA KI MESAJ ICONU TIKLANINCA

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/message.dart';
import 'package:insta_ui_kit/screens/messages/chat_screen.dart';
import 'package:insta_ui_kit/screens/messages/create_chat_screen.dart';
import 'package:insta_ui_kit/widgets/messages/message_item.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Mesajlar',
          style: GoogleFonts.muli(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: kDarkBlack,
          ),
        ),
        /*leading: BackButton(
          color: kMediumBlack,
        ),*/
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6.0),
            child: IconButton(
              icon: Icon(
                Icons.create_rounded,
                color: kMediumBlack,
              ),
              onPressed: () {
                print('create chat');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateChatScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(
                      message: messages[index],
                    ),
                  ));
            },
            child: MessageItem(message: messages[index]),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 15,
        ),
        itemCount: messages.length,
      ),
    );
  }
}
