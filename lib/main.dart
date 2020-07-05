import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories.dart';
import 'description.dart';
import 'destinationCards.dart';
import 'destinationCategory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color(0xff5986F9),
        buttonColor: Color(0xff9EBAFF),
        // canvasColor: Color(0xff1E2843),
        backgroundColor: Color(0xffE6E7E9),
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            SafeArea(
              child: Description(),
            ),
            ListOfCategories(),
            DestinationCategory(),
            DestinationCards()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],),
      ),
    );
  }
}

