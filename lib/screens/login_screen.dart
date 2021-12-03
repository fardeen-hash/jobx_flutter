import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Dool/elements/login_details.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFECEDEF),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.white,
              width: double.infinity,
              height: size.height *.40,

              child: Stack(
              alignment: AlignmentDirectional.center,
                // fit: StackFit.expand,
               children:[
                 Positioned(
                 bottom: 50,


                     child: Image.asset('assets/images/logimage.png',
                     scale: 2.1,)),

                 Positioned(
                   bottom: -3,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('Hi there!',textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Color(0xFF191121),
                           fontFamily: 'sfpro',
                           fontSize: 20.0,
                         ),),
                       Text('Lets Get Started',textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Color(0xFF191121),
                           fontFamily: 'sfpro',
                           fontWeight: FontWeight.bold,
                           fontSize: 25.0,
                         ),),
                     ],
                   ),
                 ),
               ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextFeildLogin(title: 'Username',
              next: Icons.person_pin),
            ),
            TextFeildLogin(title: 'Password',next: Icons.vpn_key_sharp),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: MaterialButton(
                elevation: 5,
                minWidth: size.width*.35,
                  height: 60,
                  hoverColor: Colors.black,
                  onPressed: (){
                  Navigator.pushNamed(context, '/homepage');
                  },
                  color: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Text("Log In", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // fontFamily: 'sfpro',

                ),),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              height: 44,
              child: Text("Don't have an Account?", style: TextStyle(
                color: Color(0xFF191121),
                fontSize: 20,
                fontFamily: 'sfpro',
                // fontWeight: FontWeight.bold
              ),),

            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: MaterialButton(
                elevation: 5,
                focusColor: Colors.black,
                minWidth: size.width*.35,
                height: 60,
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Text('Sign Up', style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  // fontFamily: 'sfpro',
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

