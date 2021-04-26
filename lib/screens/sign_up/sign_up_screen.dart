// 3.KAYIT OLMA EKRANI

import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/apis/user_service.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/config/styles.dart';
import 'package:insta_ui_kit/dtos/register_dto.dart';
import 'package:insta_ui_kit/models/user.dart';
import 'package:insta_ui_kit/screens/main_home.dart';
import 'package:http/http.dart' as http;
import 'package:insta_ui_kit/screens/sign_up/main_sign_in_screen.dart';
import 'package:insta_ui_kit/screens/sign_up/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegisterDto _registerDto = RegisterDto();
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  //TextEditingController _genderController = TextEditingController();
  String _genderSelect = '';
  bool hidePassword = true;


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
              child: BackButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainSignInScreen(),
                    ),
                        (context) => false,
                  );
                },
              ),
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
                      controller: _firstnameController,
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
                      controller: _lastnameController,
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
                      controller: _usernameController,
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
                      controller: _emailController,
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
                      keyboardType: TextInputType.emailAddress,
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
                      controller: _passwordController,
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.trim().isEmpty) {
                          return 'şifre Gerekli';
                        }
                        return null;
                      },
                      onSaved: (val) {},
                      onChanged: (value) {},
                      enableInteractiveSelection: true,
                      obscureText: hidePassword,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          color: Theme.of(context).accentColor.withOpacity(0.4),
                          icon: Icon(hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'şifre',
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
                      controller: _phoneController,
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

                    Row(
                      children: <Widget>[
                        Radio<String>(
                          value: 'FEMALE',
                          groupValue: _genderSelect,
                          onChanged: (value) {
                            setState(() {
                              _genderSelect = value;
                            });
                          },
                        ),
                        Text('FEMALE'),

                        Radio<String>(
                          value: 'MALE',
                          groupValue: _genderSelect,
                          onChanged: (value) {
                            setState(() {
                              _genderSelect = value;
                            });
                          },
                        ),
                        Text('MALE'),
                      ],
                    ),


                    /*  TextFormField(
                      controller: _genderController,
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
                    ),*/

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width,
                      height: 45,
                      child: FlatButton(
                        onPressed: () async {
                          _registerDto.firstName = _firstnameController.text;
                          _registerDto.lastName = _lastnameController.text;
                          _registerDto.username = _usernameController.text;
                          _registerDto.email = _emailController.text;
                          _registerDto.password = _passwordController.text;
                          _registerDto.phone = _phoneController.text;
                          _registerDto.gender = _genderSelect;
                          String res =
                              await UserService.registerUser(_registerDto);
                          if (res == null) {
                            _showDialogOk();
                          } else {
                            _showDialogError();
                          }
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
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInScreen(),
                              ),
                                  (context) => false,
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color: Colors.transparent,
                          child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Zaten Hesabın Var mı? ',
                                    style: GoogleFonts.muli(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  TextSpan(
                                    text: 'Giriş Yap',
                                    style: GoogleFonts.muli(
                                      color: kColorPrimary,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ]
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
    //void registerUser(){}
  }

  void _showDialogOk() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Mesaj",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 30.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 4.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
                    child: Text(
                      "Kayıt Başarılı",textAlign: TextAlign.center,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        color: kColorPrimary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                            (context) => false,
                          );
                        },
                        child: Text(
                          "Tamam",
                          style: GoogleFonts.muli(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });

    /* showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: Text("Kayıt Başarılı"),
            content: Text("Giriş Yapmak için Tamam'a Tıklayın."),
            elevation: 24.0,
            backgroundColor: Colors.blueGrey,
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                    (context) => false,
                  );
                },
                child: Text("Tamam"),
              ),
            ],
          );
        });*/
  }

  void _showDialogError() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Dikkat",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.error,
                        color: Colors.redAccent,
                        size: 30.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 4.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                    child: Text(
                      "Kayıt Başarısız\n Lütfen Tekrar Deneyin",textAlign: TextAlign.center,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        color: kError,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Tamam",
                          style: GoogleFonts.muli(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });

    /* showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            title: Text(
              "Lütfen Başka Bir Mail Girin",
            ),
            elevation: 24.0,
            actions: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                onPressed: () {
                  Navigator.of(contex).pop();

                },
                child: Text(
                  "Tamam",
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
              ),
            ],
          );
        });*/
  }
}
