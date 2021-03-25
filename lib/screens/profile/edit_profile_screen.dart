//15. PROFIL AYARLARI EKRANI

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/config/styles.dart';
import 'package:insta_ui_kit/models/chat.dart';
import 'package:insta_ui_kit/models/message.dart';
import 'package:insta_ui_kit/models/user.dart';
import 'package:insta_ui_kit/widgets/messages/chat_item.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                      'Profil Düzenle',
                      style: GoogleFonts.muli(
                        color: Colors.black87,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(7.0),
                            width: 90.0,
                            height: 90.0,
                            padding: const EdgeInsets.all(2),
                           /* decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 2.0,
                              ),
                            ),*/
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                users[0].profileImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          /*Positioned(
                            bottom: 3,
                            right: 3,
                            height: 25,
                            width: 25,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.green,
                                    Colors.orange,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.add,
                                color: kWhite,
                                size: 18,
                              ),
                            ),
                          ),*/
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'Kullanıcı Adı Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      initialValue: users[0].username,
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Kullanıcı Adı',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'Tam Ad Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      initialValue: users[0].fullName,
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Tam İsim',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'Email Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      initialValue: 'efdal@barsan.net',
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Email',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'Yaş Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      initialValue: '22',
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Yaş',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'Bio Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      initialValue: users[0].bio,
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      minLines: 1,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Bio',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      onPressed: () {
                        print('update profile');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 12),
                      color: kColorPrimary,
                      child: Text(
                        'Profili Güncelle',
                        style: GoogleFonts.muli(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
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
    );
  }
}
