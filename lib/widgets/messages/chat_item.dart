//23.MESAJ KISMINDA KI MESAJ LISTESI

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/chat.dart';
import 'package:insta_ui_kit/models/message.dart';

class ChatItem extends StatelessWidget {
  final Chat chat;
  final Message message;
  const ChatItem({
    Key key,
    this.chat,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      textDirection: chat.isMe ? TextDirection.rtl : TextDirection.ltr,
      children: <Widget>[
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              chat.isMe ? chat.profileImage : message.profileImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: size.width * 0.6,
          ),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: chat.isMe ? kColorPrimary : kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft:
                    chat.isMe ? Radius.circular(25) : Radius.circular(0),
                bottomRight:
                    !chat.isMe ? Radius.circular(25) : Radius.circular(0),
              ),
            ),
            child: Text(
              chat.message,
              style: GoogleFonts.muli(
                color: chat.isMe ? kWhite : Colors.black87,
                fontSize: 13.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
