import 'package:Dool/screens/home.dart';
import 'package:Dool/services/authentication.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                ),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                MaterialButton(
                  elevation: 5,
                  focusColor: Colors.black,
                  minWidth: size.width * .35,
                  height: 40,
                  onPressed: () {
                    AuthenticationHelper()
                        .signUp(email: email, password: password)
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
        ),
      ),
    );
  }
}
