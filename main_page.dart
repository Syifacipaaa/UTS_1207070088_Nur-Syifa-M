import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluuterpertlimaa/pages/body.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xff3A2C51),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: buildAppBar(),
      body: Body(),
      );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff3A2C51),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        tooltip: 'Menu',
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart),
          tooltip: 'shop',
          onPressed: () {},
          
        ),
        
      ],
      title: Text(
        "Discover",
        style: GoogleFonts.kronaOne(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF)),
      ),
    );
  }
}
