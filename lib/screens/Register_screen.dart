import 'package:Dool/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Dool/elements/const.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEDEF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'REGISTER',
            style: kMontserart.copyWith(fontSize: 45),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(
                    validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                      setState(() => error = '');
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    validator: (val) => val!.length < 6
                        ? 'Enter a password 6+ chars long'
                        : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  MaterialButton(
                      color: Colors.black,
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        print('got clicked');
                        if (_formKey.currentState!.validate()) {
                          dynamic result = await _auth
                              .registerWithEmailAndPassword(email, password);
                          if (result == null) {
                          } else {
                            Navigator.pushNamed(context, '/home');
                            setState(() {
                              error = 'please suppply a valid email';
                            });
                          }
                        }
                      }),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
