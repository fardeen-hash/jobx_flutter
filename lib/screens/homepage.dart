import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Dool/elements/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kInactiveColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height * .40,
                    decoration: BoxDecoration(
                        color: Color(0xFF9289da),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 15, 0, 0),
                      child: Text(
                        'Morning',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sfpro',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                      child: Text(
                        'User',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sfpro',
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                              fontFamily: 'sfpro',
                              fontWeight: FontWeight.bold,
                            ),
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            fillColor: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                      child: SizedBox(
                        height: size.height * .43,
                        child: GridView.count(
                            physics: ScrollPhysics(),
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            children: <Widget>[
                              categoryCard(
                                  title: 'Mechanic',
                                  catimage: "assets/images/mechanic.png"),
                              categoryCard(
                                  title: 'Electric',
                                  catimage: "assets/images/electric.png"),
                              categoryCard(
                                  title: 'Construction',
                                  catimage: "assets/images/construction.png"),
                              categoryCard(
                                  title: 'Toil',
                                  catimage: "assets/images/toil.png"),
                            ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 0, 15),
              child: Text(
                'Popular picks',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF9289da),
                  fontFamily: 'sfpro',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
            popularTile(),
          ],
        ),
      ),
    );
  }
}

class popularTile extends StatelessWidget {
  const popularTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ListTile(
        tileColor: Color(0xFF9289da),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        leading: Icon(Icons.person, size: 40),
        title: Text('Electrician'),
        subtitle: Text("50"),
        trailing: Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}

class categoryCard extends StatelessWidget {
  final String title;
  final String catimage;

  const categoryCard({required this.title, required this.catimage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/jobpage');
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 35, 5),
                child: Image.asset(catimage),
              ),
            )),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFFfefefe),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        height: 50,
      ),
    );
  }
}
