// ignore_for_file: import_of_legacy_library_into_null_safe, unused_import, unnecessary_import, unused_field

import 'package:Dool/elements/const.dart';
import 'package:Dool/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:Dool/services/authentication.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // GoogleSignIn _googleSignIn = GoogleSignIn();

  // final _auth = FirebaseAuth.instance;
  String password = '';
  String email = '';
  // String error = '';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFECEDEF),
      body: SafeArea(
        child: Column(children: <Widget>[
          Container(
            // color: Colors.white,
            width: double.infinity,
            height: size.height * .40,

            child: Stack(alignment: AlignmentDirectional.center,
                // fit: StackFit.expand,
                children: [
                  Positioned(
                      bottom: 50,
                      child: Image.asset(
                        'assets/images/logimage.png',
                        scale: 2.1,
                      )),
                  Positioned(
                    bottom: -3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Hi there!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF191121),
                            fontFamily: 'sfpro',
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Lets Get Started',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF191121),
                            fontFamily: 'sfpro',
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 10,
          ),

          // EMAIL

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'e-mail',
                  hintStyle: ktextfieldtextstyle.copyWith(
                      color: Colors.grey.withOpacity(1)),
                  prefixIcon: Icon(Icons.account_circle_outlined)),
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
                // error = '';
              },
            ),
          ),

          //PASSWORD

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
                // error = ' ';
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'password',
                  prefixIcon: Icon(Icons.vpn_key_rounded),
                  hintStyle: ktextfieldtextstyle.copyWith(
                      color: Colors.grey.withOpacity(1))),
            ),
          ),
          // Text(
          //   error,
          //   style: TextStyle(color: Colors.red, fontSize: 14.0),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: MaterialButton(
              elevation: 5,
              minWidth: size.width * .35,
              height: 40,
              hoverColor: Colors.black,

              //LOGIN

              onPressed: () {
                AuthenticationHelper()
                    .signIn(email: email, password: password)
                    .then((result) {
                  if (result == null) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(
                        result,
                        style: TextStyle(fontSize: 16),
                      ),
                    ));
                  }
                });
              },
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SignInButton(
            Buttons.Google,
            text: "Sign in with Google",
            onPressed: () {},
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            height: 44,
            child: Text(
              "Don't have an Account?",
              style: TextStyle(
                color: Color(0xFF191121),
                fontSize: 20,
                fontFamily: 'sfpro',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              children: <Widget>[
                MaterialButton(
                  elevation: 5,
                  focusColor: Colors.black,
                  minWidth: size.width * .35,
                  height: 40,
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  )),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
