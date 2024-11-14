import 'dart:async';

import 'package:flutter/material.dart';
import 'package:football_teammanaging/functions/dbfunctions.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:google_fonts/google_fonts.dart';

class individualPlayerview extends StatelessWidget {
  String? name;
  String? age;
  String? nation;
  String? position;
  String? jersy;
  String? weight;
  String? height;
  String? strength;
  individualPlayerview({
    super.key,
    required this.name,
    required this.age,
    required this.nation,
    required this.position,
    required this.jersy,
    required this.height,
    required this.weight,
    required this.strength,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Text(
                    'Player View ',
                    style: GoogleFonts.aclonica(fontSize: 24),
                  ),
                ),
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 80, left: 21.5),
                        child: Container(
                          height: 700,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40, bottom: 80),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Color.fromARGB(98, 102, 9, 4),
                          backgroundImage: AssetImage(
                            'assets/diego.jpg',
                          ),
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
                      height: 560,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 70,
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.black),
                      alignment: Alignment.center,
                      child: Text('NAME:  $name',
                          style: GoogleFonts.aclonica(
                              fontSize: 24, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    top: 320,
                    left: 70,
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.black),
                      alignment: Alignment.center,
                      child: Text('AGE:$age',
                          style: GoogleFonts.aclonica(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 70,
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.black),
                      alignment: Alignment.center,
                      child: Text('NATION:$nation',
                          style: GoogleFonts.aclonica(
                              fontSize: 18, color: Colors.white)),
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
                      child: Text('POSITION:$position',
                          style: GoogleFonts.aclonica(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    top: 440,
                    left: 70,
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.black),
                      alignment: Alignment.center,
                      child: Text('JERSEY:$jersy',
                          style: GoogleFonts.aclonica(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    top: 480,
                    left: 70,
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.black),
                      alignment: Alignment.center,
                      child: Text('WEIGHT: $weight',
                          style: GoogleFonts.aclonica(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    top: 520,
                    left: 70,
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.black),
                      alignment: Alignment.center,
                      child: Text('HEIGHT:$height',
                          style: GoogleFonts.aclonica(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    top: 560,
                    left: 70,
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.black),
                      alignment: Alignment.center,
                      child: Text('STRENGHT:$strength+',
                          style: GoogleFonts.aclonica(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 190,
                    child: GestureDetector(
                      onTap: () {
                        storingthedetails(context);
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
          ),
        ),
      ),
    );
  }

  Future<void> storingthedetails(BuildContext context) async {
    String? name1 = name;

    final playerData = FootballPlayer(
        name: name1,
        age: age,
        position: position,
        goals: strength,
        height: height,
        weight: weight,
        jersey: jersy);
    saveplayer(playerData);
    print("saving the details ");
    Navigator.pushNamed(context, '/page8');
  }
}
