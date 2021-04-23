// 3.KAYIT OLMA EKRANI

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/config/styles.dart';
import 'package:insta_ui_kit/models/user.dart';
import 'package:insta_ui_kit/screens/main_home.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //RegisterDto _registerDto = RegisterDto();

  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BackButton(),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Kayıt Ol',
                style: GoogleFonts.muli(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Bilgilerinizi Aşağı Girin',
                      style: GoogleFonts.muli(
                        color: Colors.black45,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textAlignVertical: TextAlignVertical.center,

                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'İsim Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'İsim',
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
                          return 'Soyad Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Soyad',
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
                          return 'Kullanıcı Adı Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
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
                      controller: usernameController,
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'İnönü Maili Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'İnönü Maili',
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
                          return 'Şifre Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Şifre',
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
                          return 'Telefon Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      obscureText: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Telefon',
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
                    TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'Cinsiyet Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      obscureText: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Cinsiyet',
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
                    Container(
                      width: size.width,
                      height: 45,
                      child: FlatButton(
                        onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainHome(),
                            ),
                            (context) => false,
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                        color: kColorPrimary,
                        child: Text(
                          'Kayıt Ol',
                          style: GoogleFonts.muli(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 25,

                    ),


                    Center(
                      child: Container(
                        height: 45,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color: Colors.transparent,
                          child: Text(
                            'Zaten Hesabın Var mı? Giriş Yap',
                            style: GoogleFonts.muli(
                              color: Colors.black38,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
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
    );
  }

  //void registerUser(){}
}
