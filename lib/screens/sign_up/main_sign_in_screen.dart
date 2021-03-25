//1. GIRIS EKRANI

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/screens/main_home.dart';

import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

class MainSignInScreen extends StatefulWidget {
  @override
  _MainSignInScreenState createState() => _MainSignInScreenState();
}

class _MainSignInScreenState extends State<MainSignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: size.height * 0.57,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.2, 0.8],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kColorPrimary,
                    kColorPrimaryLight,
                  ],
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Positioned(
                    right: 0,
                    bottom: 0,
                    width: size.width * 0.7,
                    child: SvgPicture.asset(
                      'assets/images/sign_up_bg.svg',
                      height: size.height * 0.3,
                    ),
                  ),
                  Container(
                    width: size.width * 0.6,
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'İnönü Sosyal',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 35.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Hoşgeldiniz',
                          style: GoogleFonts.muli(
                            color: Colors.white.withOpacity(0.85),
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: kColorPrimaryLight),
            child: Container(
              // height: size.height * 0.4,
              width: size.width,
              decoration: BoxDecoration(
                color: kOffWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  /*Container(
                    width: size.width * 0.7,
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainHome(),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: kColorPrimary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookMessenger,
                            color: kWhite,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sign in with Facebook',
                            style: GoogleFonts.muli(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                  SizedBox(
                    height: 15,
                  ),
                 /* Container(
                    width: size.width * 0.7,
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainHome(),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.google,
                            color: kWhite,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sign in with Google',
                            style: GoogleFonts.muli(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width * 0.7,
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: kColorPrimary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            color: kWhite,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'İnönü Maili ile Giriş',
                            style: GoogleFonts.muli(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Container(
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
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
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
