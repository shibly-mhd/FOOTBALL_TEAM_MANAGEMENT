import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class coachsquadview extends StatelessWidget {
  coachsquadview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: Text('coaches added ', style: TextStyle(fontSize: 24)),
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 130, left: 21.5),
                      child: Container(
                        height: 700,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 57, 90, 117),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(
                        'assets/diego.jpg',
                      ),
                    ),
                  ),
                  bottom: 490,
                  left: 80,
                ),
                Positioned(
                  bottom: 5,
                  left: 37,
                  child: Container(
                    width: 370,
                    height: 480,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Positioned(
                  top: 400,
                  left: 70,
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.black),
                    alignment: Alignment.center,
                    child: Text('MARADONA',
                        style: GoogleFonts.aclonica(
                            fontSize: 24, color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: 500,
                  left: 70,
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.black),
                    alignment: Alignment.center,
                    child: Text('45',
                        style: GoogleFonts.aclonica(
                            fontSize: 24, color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: 600,
                  left: 70,
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.black),
                    alignment: Alignment.center,
                    child: Text('FORMER ARGENTINA PLAYER',
                        style: GoogleFonts.aclonica(
                            fontSize: 18, color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: 700,
                  left: 70,
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.black),
                    alignment: Alignment.center,
                    child: Text('LEGENDARY IN LIST',
                        style: GoogleFonts.aclonica(
                            fontSize: 24, color: Colors.white)),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 190,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/page7');
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
