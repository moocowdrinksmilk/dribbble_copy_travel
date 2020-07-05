import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfCategories extends StatefulWidget {
  const ListOfCategories({
    Key key,
  }) : super(key: key);

  @override
  _ListOfCategoriesState createState() => _ListOfCategoriesState();
}

class _ListOfCategoriesState extends State<ListOfCategories> {
  var isActive = 0;

  @override
  Widget build(BuildContext context) {
    // final li = ['All', 'Hiking', 'Forest', 'Camp', 'City', 'Lanjiao'];
    final size = MediaQuery.of(context).size;
    final li = [
      {'name': 'All', 'icon': Icon(Icons.ac_unit, size: size.width * 0.10,)},
      {'name': 'Hiking', 'icon': Icon(Icons.face, size: size.width * 0.10)},
      {'name': 'Forest', 'icon': Icon(Icons.search, size: size.width * 0.10)},
      {'name': 'Camp', 'icon': Icon(Icons.headset, size: size.width * 0.10)},
      {'name': 'City', 'icon': Icon(Icons.today, size: size.width * 0.10)}
    ];
    return Container(
      height: 120,
      child: ListView.builder(
          itemCount: li.length,
          scrollDirection: Axis.horizontal,
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
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    width: size.width * 0.18,
                    height: 110,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(0, 2),
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          offset: Offset(1, -2),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: isActive == index
                          ? LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Theme.of(context).buttonColor,
                                Theme.of(context).accentColor
                              ],
                            )
                          : LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white, Colors.white],
                            ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        li[index]['name'],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.065,
                    top: size.width * 0.06,
                    child: Container(
                      child: li[index]['icon'],
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
