import 'package:flutter/material.dart';
import 'package:Dool/elements/const.dart';

class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kActiveColor,
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: kInactiveColor,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 17),
                      blurRadius: 23,
                      spreadRadius: -13,
                      color: Colors.black.withOpacity(.7),
                    )
                  ]),
              margin: EdgeInsets.fromLTRB(30, 150, 30, 40),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'NAME',
                    style: kLargeTextStyle,
                  ),
                  Text('ELECTRICIAN', style: kMediumTextStyle),
                  SizedBox(
                    height: 20,
                  ),
                  Text('⭐⭐⭐⭐⭐'),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 80,
                      child:
                          Text('On Friday 18/10/21', style: kMediumTextStyle)),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    '\$800',
                    style: kLargeTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            elevation: 7,
            minWidth: size.width - 30,
            height: 60,
            onPressed: () {
              Navigator.pushNamed(context, '/carddemo');
            },
            color: Color(0xFF504594),
            focusColor: Color(0xFFb7b3e6),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            child: Text(
              "PAY",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                // fontFamily: 'sfpro',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
