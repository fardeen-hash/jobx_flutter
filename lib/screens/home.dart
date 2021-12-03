// import 'package:Dool/elements/const.dart';
import 'package:Dool/elements/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: size.width - 30,
                height: 55,
                child: Stack(
                  children: [
                    Positioned(
                        top: 15,
                        right: 10,
                        child: Icon(Icons.person_pin)),
                    Positioned(
                        top: 15,
                        left: 10,
                        child: Text('DOOL',
                          style: kMontserart,
                        ),)
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: '  search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                  ),
                  fillColor: Color(0xFFECEDEF),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black54),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color:Colors.black  ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Category',
                  style: TextStyle(
                      fontFamily: 'Montserrart',
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ),
            Container(
              height: 300,
              width: 1020,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          categoryCard(cardColor: Color(0xFF0D2A3F)),
                          categoryCard(cardColor: Colors.yellow),
                          categoryCard(cardColor: Colors.deepOrangeAccent),
                          categoryCard(cardColor: Colors.black),
                          SizedBox(width: 20,)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Popular',
                      style: TextStyle(
                          fontFamily: 'Montserrart',
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                ),
                popularCards(size: size),
                popularCards(size: size),
                popularCards(size: size),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class popularCards extends StatelessWidget {
  const popularCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: size.width - 30,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF).withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black54,
              width: .9,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 12,
                left: 16,
                child: Container(
                  width: 75,
                  height: 75,
                  color: Color(0xFF0D2A3F),
                ),
              ),
              Positioned(
                  top: 12,
                  left: 100,
                  child: Column(
                    children: [Text('jobName',style: kbodytext,), Text('Category',style: kbodytext,)],
                  )),
              Positioned(right: 20, top: 30, child: Text('\$55',style: kbodytext,))
            ],
          ),
        ),
      ),
    );
  }
}

class categoryCard extends StatelessWidget {
  final Color cardColor;

  const categoryCard({
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // var rowWidth = (size.width - 80) / 4;
    return Material(
      child: InkWell(
        onTap: () {
          print("tapped");
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          width: 200,
          // rowWidth,
          height: 270,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Container(
// width: size.width,
// child: Padding(
// padding: const EdgeInsets.fromLTRB(10, 15, 0, 30),
// child: Text(
// 'Morning User',
// textAlign: TextAlign.left,
// textScaleFactor: .75,
// style: TextStyle(
// color: Color(0xFF0D2A3F),
// fontFamily: 'Roboto',
// fontSize: 57.0,
// fontWeight: FontWeight.w500),
// ),
// ),
// ),
// Text(
// 'Category',
// textAlign: TextAlign.left,
// ),Container(
// width: size.width,
// child: Padding(
// padding: const EdgeInsets.fromLTRB(10, 15, 0, 30),
// child: Text(
// 'Morning User',
// textAlign: TextAlign.left,
// textScaleFactor: .75,
// style: TextStyle(
// color: Color(0xFF0D2A3F),
// fontFamily: 'Roboto',
// fontSize: 57.0,
// fontWeight: FontWeight.w500),
// ),
// ),
// ),
// Text(
// 'Category',
// textAlign: TextAlign.left,
// ),
