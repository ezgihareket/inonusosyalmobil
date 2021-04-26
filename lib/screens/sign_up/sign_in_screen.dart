// 2. KAYIT OLMUS KULLANICI GIRIS EKRANI

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/apis/user_service.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/config/styles.dart';
import 'package:insta_ui_kit/dtos/login_dto.dart';
import 'package:insta_ui_kit/screens/sign_up/sign_up_screen.dart';

import '../main_home.dart';
import 'main_sign_in_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool hidePassword = true;
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String message = '';

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  /*void setValues() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('username', usernameController.text);
    sharedPreferences.setString('password', passwordController.text);
    print('Shared preff');
  }*/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BackButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainSignInScreen(),
                      ),
                      (context) => false,
                    );
                  },
                ),
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
                  controller: usernameController,
                  textAlignVertical: TextAlignVertical.center,
                  validator: (input) => !input.contains("@")
                      ? "Geçerli Inönü Maili Olmalıdır"
                      : null,
                  onSaved: (input) {},
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
                  onSaved: (input) {},
                  controller: passwordController,
                  validator: (input) => input.length < 3
                      ? "Şifre 3 Karakterden Uzun Olmalıdır"
                      : null,
                  obscureText: hidePassword,
                  onChanged: (value) {},
                  enableInteractiveSelection: true,
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
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        debugPrint(passwordController.text);

                        LoginDto ldto = LoginDto();
                        ldto.username = usernameController.text;
                        ldto.password = passwordController.text;
                        var rsp = await UserService.loginUser(ldto);

                        print(rsp);
                        if (rsp != null) {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainHome(),
                              ),
                            );
                          });
                        } else {
                          setState(() {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32.0))),
                                    contentPadding: EdgeInsets.only(top: 10.0),
                                    content: Container(
                                      width: 300.0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 50.0,
                                                vertical: 20.0),
                                            child: Text(
                                              "Giriş Başarısız",
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          InkWell(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 10.0, bottom: 10.0),
                                              decoration: BoxDecoration(
                                                color: kError,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(32.0),
                                                    bottomRight:
                                                        Radius.circular(32.0)),
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
                          });
                        }
                      }

                      /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainHome(),
                        ),
                      );*/
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
                Text(message),
                Center(
                  child: Container(
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                          (context) => false,
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Colors.transparent,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Hesabın Yok mu? ',
                            style: GoogleFonts.muli(
                              color: Colors.black38,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Şimdi Kayıt Ol',
                            style: GoogleFonts.muli(
                              color: kColorPrimary,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
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
