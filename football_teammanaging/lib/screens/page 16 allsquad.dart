import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class allsquad extends StatelessWidget {
  allsquad({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 3),
                child: Container(
                  width: size / 2.2,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/COACHSQUAD.jpeg'),
                        fit: BoxFit.fill),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        ' THE SQUAD ',
                        style: GoogleFonts.aclonica(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: size / 10,
                      ),
                      Text(
                        ' COACH DETAILS ',
                        style: GoogleFonts.aclonica(
                          fontSize: 24,
                          color: Colors.yellow,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/page5');
                        },
                        child: Icon(
                          Iconsax.arrow_right,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 3),
                child: Container(
                  width: size / 2.2,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/PLAYER SQUAD.jpeg'),
                        fit: BoxFit.fill),
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        ' THE SQUAD ',
                        style: GoogleFonts.aclonica(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: size / 10,
                      ),
                      Text(
                        ' PLAYER SQUAD ',
                        style: GoogleFonts.aclonica(
                          fontSize: 24,
                          color: Colors.yellow,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/page8');
                        },
                        child: Icon(
                          Iconsax.arrow_right,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 3),
                child: Container(
                  width: size / 2.2,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/sponsors.jpg"),
                        fit: BoxFit.fill),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        ' SPONSERS ',
                        style: GoogleFonts.aclonica(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: size / 10,
                      ),
                      Text(
                        ' COMPANY DETAILS ',
                        style: GoogleFonts.aclonica(
                          fontSize: 24,
                          color: Colors.yellow,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/page14');
                        },
                        child: Icon(
                          Iconsax.arrow_right,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
