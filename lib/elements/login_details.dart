import 'package:flutter/material.dart';

class TextFeildLogin extends StatelessWidget {
  final String title;
  final IconData next;

  const TextFeildLogin({
    required this.title,
    required this.next,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: TextField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            prefixIcon: Icon(next),
            hintText: title,
            hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.4),
              fontFamily: 'sfpro',
              fontWeight: FontWeight.bold,
            ),
            fillColor: Color(0xFFFFFFFF),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black54),
              borderRadius: BorderRadius.circular(16.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ));
  }
}
