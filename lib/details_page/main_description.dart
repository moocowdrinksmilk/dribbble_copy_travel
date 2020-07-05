import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/bali.jpg',
              fit: BoxFit.fill,
            ),
          ),
          SafeArea(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(27, 27, 0, 0),
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.grey.shade200.withOpacity(0.30)),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
