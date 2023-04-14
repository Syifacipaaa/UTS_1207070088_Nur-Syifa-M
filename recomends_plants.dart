import 'package:flutter/material.dart';
import 'package:fluuterpertlimaa/pages/tittle.dart';
import 'package:google_fonts/google_fonts.dart';




class recomendsplants extends StatelessWidget {
  const recomendsplants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
     child: Padding(
       padding: const EdgeInsets.only(right: 16),
       child: Row(
        
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right: 16),
             child: RecomandPlantCard(
               image: "assets/PlantA.png",
               title: "Plant",
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 16),
             child: RecomandPlantCard(
               image: "assets/LampA.png",
               title: "Lamp",
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 16),
             child: RecomandPlantCard(
               image: "assets/ChairA.png",
               title: "Chair",
             ),
           ),
           RecomandPlantCard(
             image: "assets/ChairA.png",
             title: "Chair",
           ),
           
          
         ],
       ),
     ),
            );
  }
}

class RecomandPlantCard extends StatelessWidget {
  const RecomandPlantCard({
    super.key,
    required this.image,
    required this.title,
  });
  final String image, title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 0,
        bottom: 0,
        top: 0,
      ),
      width: 120,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Color(0xFFF6F3F3),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xff3A2C51).withOpacity(0.35),
                  ),
                ]),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title".toUpperCase(),
                          style: GoogleFonts.kronaOne(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3A2C51),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      
        );
    
  }
}
