import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japanui/detailspage.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Color(0xFF3500ff).withOpacity(0.3)),
                  child: Text('ARTICLE',
                    style: GoogleFonts.montserrat(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                        textStyle: TextStyle(color: Colors.white)),
                  )
                ), 
                Container(
                  height: 40.0,
                  width: 40.0,
                  child: Center(
                    child: Icon(Icons.border_color, color: Colors.white),
                  ),
                )
              ],
            )),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      IconButton(icon: Icon(Icons.search), onPressed: null),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400)
                ),
              )),
            Container(
                    width: MediaQuery.of(context).size.width - 15.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('AUTHOR',
                        style: GoogleFonts.montserrat(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle(color: Colors.white),
                        )
                        )
                      ],
                    )
                  ),
            Container(
                    height: 80.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildListUser('assets/japan.jpg', 'Takashi castle',
                            '\$200 - \$400'),
                        _buildListUser('assets/kyoto.jpg', 'Heaven\'s gate',
                            '\$50 - \$150'),
                        _buildListUser('assets/canada.jpg', 'Miay gate',
                            '\$300 - \$350'),
                        _buildListUser('assets/japan.jpg', 'Miay gate',
                            '\$300 - \$350'),
                        _buildListUser('assets/canada.jpg', 'Miay gate',
                            '\$300 - \$350'),
                        _buildListUser('assets/canada.jpg', 'Miay gate',
                            '\$300 - \$350'),
                        _buildListUser('assets/canada.jpg', 'Miay gate',
                            '\$300 - \$350'),
                        _buildListUser('assets/canada.jpg', 'Miay gate',
                            '\$300 - \$350'),
                        _buildListUser('assets/canada.jpg', 'Miay gate',
                            '\$300 - \$350')
                      ],
                    )
                  ),
            Container(
                    width: MediaQuery.of(context).size.width - 15.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('TOPICS FOR YOU',
                        style: GoogleFonts.montserrat(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle(color: Colors.white),
                        )
                        )
                      ],
                    )
                  ),
            SizedBox(height: 10.0),
        Container(
            height: MediaQuery.of(context).size.height - 330.0,
            child: ListView(
              children: <Widget>[
                _buildListItem('assets/japan.jpg', 'Japan',
                    'Explore the land of the rising sun'),
                _buildListItem('assets/canada.jpg', 'Canada',
                    'Explore the vast forests of Canada')
              ],
            ))
      ],
    );
  }

  _buildListItem(String imgPath, String country, String description) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Container(height: 200.0),
            GestureDetector(
              onTap: () { 
                Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsPage(imgPath: imgPath, title: country))); },
              child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.1), BlendMode.darken))),
                    ),
            ), 
            Container(
                height: 230.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 160.0),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      height: 30.0,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Color(0xFF7F50ff).withOpacity(0.7)),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              image: DecorationImage(
                                image: AssetImage("assets/japan.jpg"),
                                fit: BoxFit.cover
                              )
                            )
                          ),
                          Text('Marina',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.white)),
                            )
                        ],
                      )
                    ),
                    SizedBox(height: 22.0),
                    Text(description,
                        style: GoogleFonts.montserrat(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            textStyle: TextStyle(color: Colors.white)))
                  ],
                ))
          ],
        ));
  }

    _buildListUser(String imgPath, String placeName, String price) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover
              )
            )
          )
        ]
      )
    );
  }
}
