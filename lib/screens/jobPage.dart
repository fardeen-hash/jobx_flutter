import 'package:flutter/material.dart';
import 'package:Dool/elements/const.dart';

class jobPage extends StatefulWidget {
  @override
  _jobPageState createState() => _jobPageState();
}

class _jobPageState extends State<jobPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Color(0xFFE7E5F6),
            ),
            Positioned(
              child: MaterialButton(
                padding: EdgeInsets.all(2),
                minWidth: 0,
                onPressed: () { Navigator.pushNamed(context, '/homepage');},
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Color(0xFF493DA6),
                  size: 40,
                ),
              ),
            ),
            Positioned(
                top: 60,
                left: 30,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CATEGORY",
                        style: kLargeTextStyle,
                      ),
                      Text(
                        'PLACE',
                        style: TextStyle(fontSize: 18),
                      )
                    ])),
            Positioned(
              top: size.height * .25,
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xFF9289da),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(67),
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 10, 0),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 20,
                    children: [
                      jobCard(),
                      jobCard(),
                      jobCard(),
                      jobCard(),
                      jobCard(),
                      jobCard(),
                      jobCard(),
                      jobCard(),
                      jobCard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class jobCard extends StatelessWidget {
  const jobCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { Navigator.pushNamed(context, '/paypage');},
      child: Container(
        width: 172,
        height: 60,
        decoration: BoxDecoration(
            color: kInactiveColor,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kInactiveColor.withOpacity(0.45),
              )
            ]),
      ),
    );
  }
}
