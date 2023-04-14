import 'package:flutter/material.dart';
import 'package:fluuterpertlimaa/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    body: Stack(children: [
      Container(
        margin:EdgeInsets.symmetric(vertical: 230,) ,
        width: 390,
        height: 381,
        decoration: BoxDecoration(
          image:DecorationImage(
            fit: BoxFit.cover,
          image: AssetImage(
            "assets/rumah.png"
          )
        )
        )
      ),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(" Insign",
                  style: GoogleFonts.kronaOne(
                    fontWeight: FontWeight.w600,
                    fontSize: 48,
                    color: Color(0xff3A2C51)
                  )),

            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1, vertical: 15),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/bulat.png"))
              ),
            )
          ],
        ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Text("Interior Design",
              style: GoogleFonts.kronaOne(
                fontWeight: FontWeight.w300,
                color: Color(0xff3A2C51),
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
              ),
              
            ),
            const Spacer(),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => mainpage()
                  ),
                  );
                },
                child: Container(
                  child: Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 90),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 14
                      ),
                    decoration: BoxDecoration(
                      color: Color(0xff53CFDF),
                      borderRadius: BorderRadius.circular(16),),
                    child: Text("Masuk",
                    style: GoogleFonts.kronaOne(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff3A2C51)
                    )
                    ),
                  ),
                  
                          
                              ),
                ),
            ), 
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
               child:Text(
                " Belum punya akun?Daftar Disini",
                style: GoogleFonts.kronaOne(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff3A2C51)
                ),
               ) , 
              ),
            )         
          ],
          
        ),
        
        ),
    ]),
    ); 
  }
}