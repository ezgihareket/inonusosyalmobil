// 2. KAYIT OLMUS KULLANICI GIRIS EKRANI

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/apis/api_service.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/config/styles.dart';

import '../main_home.dart';




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
                        var username = usernameController.text;
                        var password = passwordController.text;

                        setState(() {
                          //message = "Lütfen Bekleyin..";
                          final snackBar = SnackBar(content: Text('Lütfen Bekleyin..'),
                            duration: Duration(milliseconds: 800),);
                          scaffoldKey.currentState.showSnackBar(snackBar);
                        });

                       APIService apiservice = APIService();
                        var rsp = await apiservice.loginUser(username, password);
                        print(rsp);
                        if (rsp != null) {
                          setState(() {
                            message = "Giriş Başarılı";
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainHome(),
                            ),
                          );
                        } else {
                          setState(() {
                            //message = "Giriş Başarısız";
                             final snackBar = SnackBar(content: Text('Giriş Başarısız!!'),
                              duration: Duration(milliseconds: 800),);
                            scaffoldKey.currentState.showSnackBar(snackBar);
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
