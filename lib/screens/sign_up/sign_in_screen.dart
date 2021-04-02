// 2. KAYIT OLMUS KULLANICI GIRIS EKRANI

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/config/styles.dart';
import 'package:insta_ui_kit/pages/home_page.dart';
import 'package:insta_ui_kit/screens/sign_up/sign_up_screen.dart';

import '../main_home.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'Giriş Yap',
                    style: GoogleFonts.muli(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
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
                      return 'Email Gerekli';
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
                    labelText: 'İnönü Mail',
                    labelStyle: kInputHintStyle,
                    fillColor: kWhite,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.black38, width: 0.3),
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
                    labelText: 'Şifre',
                    labelStyle: kInputHintStyle,
                    fillColor: kWhite,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.black38, width: 0.3),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainHome(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    color: kColorPrimary,
                    child: Text(
                      'Giriş Yap',
                      style: GoogleFonts.muli(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Spacer(),
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
                        'Hesabın Yok mu? Şimdi Kayıt Ol',
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
      ),
    );
  }
}
