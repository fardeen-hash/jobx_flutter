import 'package:flutter/material.dart';

const kLargeTextStyle = TextStyle(
  color: Color(0xFF493DA6),
  fontFamily: 'sfpro',
  fontWeight: FontWeight.bold,
  fontSize: 36.0,
);

const kMediumTextStyle = TextStyle(
  color: Color(0xFF493DA6),
  fontFamily: 'sfpro',
  fontSize: 20.0,
);
const kMontserart = TextStyle(
    fontFamily: 'Montserrart', fontWeight: FontWeight.bold, fontSize: 30);
const kbodytext =
    TextStyle(fontFamily: 'sfpro', fontWeight: FontWeight.bold, fontSize: 16);

const ktextfieldtextstyle = TextStyle(
  fontFamily: 'sfpro',
  fontWeight: FontWeight.bold,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black54, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
);

const kActiveColor = Color(0xFF9289da);
const kInactiveColor = Color(0xFFE7E5F6);
const kActiveTextColor = Color(0xFF493DA6);
