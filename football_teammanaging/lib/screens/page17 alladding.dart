import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class alldetailsadd extends StatelessWidget {
  alldetailsadd({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color.fromARGB(255, 171, 223, 223),
        title: Center(
          child: Text(
            "SQUAD DEFINING",
            style: GoogleFonts.aclonica(
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 120),
              child: Container(
                width: size / 5,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/RONALDINHO.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/page7');
                      },
                      child: Text(
                        'ADD PLAYER',
                        style: GoogleFonts.aclonica(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size / 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Container(
                width: size / 5,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/coashadd.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/page4');
                      },
                      child: Text(
                        'ADD COACH',
                        style: GoogleFonts.aclonica(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size / 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 120),
              child: Container(
                width: size / 5,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/sponsor.png'),
                        fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/page13');
                      },
                      child: Text(
                        'COMPANY',
                        style: GoogleFonts.aclonica(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
