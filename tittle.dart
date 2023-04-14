import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class titlewithunderline extends StatelessWidget {
  const titlewithunderline({
    super.key, required this.text,
  });
final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(text,
              style: GoogleFonts.kronaOne(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xff3A2C51),
              ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
    
              child: Container(
                margin: EdgeInsets.only(right: 10),
                height: 7,
                color:Color(0xff3A2C51).withOpacity(0.2),
              ),
            )
          ],
          
        ),
      ),
    );
  
  }
}

