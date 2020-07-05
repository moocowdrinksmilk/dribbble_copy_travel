import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'description.dart';
import 'details_page/main_description.dart';

class DestinationCards extends StatelessWidget {
  const DestinationCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final li = ['Bali', 'Singapore', 'Australia'];
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: li.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print('Hello');
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainDescription()));
            },
              child: Container(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(0, 3)),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(2, 0)),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 175,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: (AssetImage(
                              'assets/bali.jpg',
                            )),
                            fit: BoxFit.fill),
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              li[index],
                              style: GoogleFonts.roboto(
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w500),
                                  fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Text(
                              'More than 42 places 😍',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text('\$850',
                                      style: GoogleFonts.roboto(
                                          color: Theme.of(context).accentColor,
                                          textStyle: TextStyle(fontSize: 25))),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).buttonColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7))),
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
