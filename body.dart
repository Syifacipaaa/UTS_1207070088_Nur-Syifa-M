import 'package:flutter/material.dart';
import 'package:fluuterpertlimaa/pages/recomends_plants.dart';
import 'package:fluuterpertlimaa/pages/tittle.dart';
import 'package:google_fonts/google_fonts.dart';

import 'header_with_SearchBox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //it will provive us total and width of our screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          titlewithunderline(text: "Category"),
 recomendsplants(),
titlewithunderline(text: "Hot Item"),
Container(
  padding: const EdgeInsets.only(right: 16),
  width: 300,
  height: 300,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    image: DecorationImage(
      image: AssetImage("assets/favH.png"),
      
      ),
  ),
),
Container(
padding: const EdgeInsets.only(right: 16),
  width: 300,
  height: 300,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    image: DecorationImage(
      image: AssetImage("assets/KursiH.png"),
      
      ),
  ),
),
Container(
  padding: const EdgeInsets.only(right: 16),
  width: 300,
  height: 300,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    image: DecorationImage(
      image: AssetImage("assets/KaktusH.png"),
      
      ),
  ),
),

           
        ],
      ),
    );
  }
}

