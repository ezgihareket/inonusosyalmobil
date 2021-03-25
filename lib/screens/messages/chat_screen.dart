//21. PROFILE GIRINCE MESAJ A TIKLAYINCA ACILAN SAYFA

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/chat.dart';
import 'package:insta_ui_kit/models/message.dart';
import 'package:insta_ui_kit/widgets/messages/chat_item.dart';

class ChatScreen extends StatefulWidget {
  final Message message;

  const ChatScreen({Key key, this.message}) : super(key: key);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                    Stack(
                      children: [
                        Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              widget.message.profileImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        widget.message.isOnline
                            ? Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 12.0,
                                  height: 12.0,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.message.username,
                      style: GoogleFonts.muli(
                        color: Colors.black87,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.error,
                        color: kMediumBlack,
                        size: 24.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                itemBuilder: (context, index) {
                  return ChatItem(
                    chat: chats[index],
                    message: widget.message,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
                itemCount: 5,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlurryContainer(
                    blur: 10.0,
                    bgColor: Colors.black,
                    // height: 50.0,
                    width: MediaQuery.of(context).size.width - 125,
                    child: TextFormField(
                      // textAlignVertical: TextAlignVertical.center,
                      // textAlign: TextAlign.start,
                      maxLines: 3,
                      minLines: 1,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(0),
                        hintText: 'Mesaj..',
                        hintStyle: GoogleFonts.muli(
                          color: Colors.white70,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                        isDense: true,
                        border: InputBorder.none,
                      ),
                      style: GoogleFonts.muli(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: BlurryContainer(
                        width: 50.0,
                        height: 50.0,
                        blur: 15.0,
                        bgColor: Colors.black,
                        padding: const EdgeInsets.all(0),
                        child: Icon(
                          FontAwesomeIcons.solidPaperPlane,
                          color: kOffWhite,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
