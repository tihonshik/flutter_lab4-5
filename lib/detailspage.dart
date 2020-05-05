import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  final imgPath, title;

  DetailsPage({this.imgPath, this.title});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath), fit: BoxFit.cover)
              
            ),
          ),
          BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  child: Center(
                    child: Icon(Icons.arrow_back_ios, color: Colors.white)
                  )
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  child: Center(
                    child: Icon(Icons.menu, color: Colors.white),
                  ),
                ),
              ],
            )
          ),
          Positioned(
            top: 60.0,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width - 30.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('HELEN',
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w200,
                          textStyle: TextStyle(color: Colors.white),
                        )),
                        Text('TOPICS FOR YOU',
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w200,
                          textStyle: TextStyle(color: Colors.white),
                        )),
                      ],
                    )
                  )
                ],
              )
            )
          ),
          Positioned(
            top: 380.0,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    height: 20.0,
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        color: Color(0xFF3500ff)),
                    child: Text('July 13-15 mine read',
                      style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle(color: Colors.white)),
                    )
                  ),
                  Row(
                        children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - 80.0,
                              child: Text('10 microinteractions that will inspire your next project',
                              style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF))
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50.0),
                              child: Text('01',
                              style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF))
                              )
                            )
                        ],
                      ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    height: 2.0,
                    width: MediaQuery.of(context).size.width - 10.0,
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        color: Color(0xffffffff)),
                    child: Text('',
                      style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle(color: Colors.white)),
                    )
                  ),
                  Row(
                        children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - 80.0,
                              child: Text('Louis West',
                              style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF))
                              )
                            ),
                            Container(
                              child: Text('Author',
                              style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF))
                              )
                            )
                        ],
                      )
                ],
              )
            )
          )
        ],
      ),
    );
  }
}
