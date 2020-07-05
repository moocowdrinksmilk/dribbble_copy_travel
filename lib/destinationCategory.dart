import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationCategory extends StatefulWidget {
  const DestinationCategory({
    Key key,
  }) : super(key: key);

  @override
  _DestinationCategoryState createState() => _DestinationCategoryState();
}

class _DestinationCategoryState extends State<DestinationCategory> {
  var isActive = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final li = [
      'Popular',
      'Adventure',
      'Safari',
      'Luxury',
      'Relaxing',
      'Fishes'
    ];
    return Container(
      height: size.height * 0.11,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: li.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  if (isActive == index) return;
                  setState(() {
                    isActive = index;
                    print(isActive);
                    print(index);
                  });
                  print(isActive);
                },
                child: Container(
                  padding: isActive == index
                      ? EdgeInsets.fromLTRB(3, 5, 3, 0)
                      : EdgeInsets.fromLTRB(3, 9, 3, 0),
                  margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
                  height: 20,
                  child: Column(
                    children: <Widget>[
                      Text(
                        li[index],
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: isActive == index? Colors.black : Colors.grey,
                                fontSize: isActive == index ? 20 : 15,
                                fontWeight: FontWeight.w400)),
                      ),
                      Container(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                          width: 25,
                          height: 3,
                          decoration: BoxDecoration(
                              color: isActive == index ? Theme.of(context).accentColor : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
