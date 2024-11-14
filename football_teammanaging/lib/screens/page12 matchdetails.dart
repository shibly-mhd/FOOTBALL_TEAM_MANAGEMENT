import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class matchDetails extends StatelessWidget {
  matchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'MATCHES',
                    style: GoogleFonts.alata(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 48),
                  child: Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadiusDirectional.circular(30),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'CLUB IMPACT',
                          style: GoogleFonts.aclonica(
                              fontSize: 23, color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Text(
                            'Dream fc vs Fifa fc',
                            style: GoogleFonts.aclonica(
                                fontSize: 23, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48, top: 20),
                  child: Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadiusDirectional.circular(30),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Friendly match ',
                          style: GoogleFonts.aclonica(
                              fontSize: 24, color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Text(
                            'Dream fc vs Fifa fc',
                            style: GoogleFonts.aclonica(
                                fontSize: 24, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48, top: 20),
                  child: Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadiusDirectional.circular(30),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Premier league ',
                          style: GoogleFonts.aclonica(
                              fontSize: 25, color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Text(
                            'Dream fc vs Fifa fc',
                            style: GoogleFonts.aclonica(
                                fontSize: 24, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/page13');
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 50,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
