import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double searchButtonSize = 40.0;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 16, 0, 0),
          child: Container(
            width: size.width * 0.80,
            child: Text(
              'Find your dream destination',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Container(
          width: searchButtonSize,
          height: searchButtonSize,
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ],
    );
  }
}
