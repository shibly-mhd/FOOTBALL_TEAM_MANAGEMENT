import 'package:flutter/material.dart';
import 'package:football_teammanaging/functions/dbfunctions.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/screens/page9%20individualPlayerview.dart';
import 'package:google_fonts/google_fonts.dart';

class addPlayerdetails extends StatelessWidget {
  addPlayerdetails({super.key});

  TextEditingController playernamecontroller = TextEditingController();
  TextEditingController nationcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController staminacontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  TextEditingController positioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(163, 52, 12, 196),
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Text(
                    'your team ',
                    style:
                        GoogleFonts.akatab(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              // next container
              Padding(
                padding: EdgeInsets.only(left: 40, top: 20),
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Text(
                    'add your players',
                    style:
                        GoogleFonts.akatab(fontSize: 26, color: Colors.black),
                  ),
                ),
              ),

              //container .........
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 25),
                    child: Container(
                      height: 700,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Positioned(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(
                        'assets/imgicon.png',
                      ),
                    ),
                    top: 50,
                    left: 165,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //text field containers
                  Padding(
                    padding: EdgeInsets.only(left: 70, top: 180),
                    child: Container(
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: playernamecontroller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              labelText: "NAME",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: nationcontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              labelText: "NATION",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: agecontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              labelText: "AGE",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: staminacontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              labelText: "STAMINA",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: numbercontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              labelText: "NUMBER",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: heightcontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              labelText: "HEIGHT",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: weightcontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              labelText: "WEIGHT",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: positioncontroller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.purple,
                              alignLabelWithHint: true,
                              labelText: "POSITION",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                addplayer(context);
                              },
                              icon: Icon(
                                Icons.sports_soccer,
                                size: 50,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addplayer(BuildContext context) async {
    final playername = playernamecontroller.text.trim();
    final nation = nationcontroller.text.trim();
    final age = agecontroller.text.trim();
    final stamina = staminacontroller.text.trim();
    final number = numbercontroller.text.trim();
    final height = heightcontroller.text.trim();
    final weight = weightcontroller.text.trim();
    final position = positioncontroller.text.trim();

    if (playername.isNotEmpty &&
        age.isNotEmpty &&
        nation.isNotEmpty &&
        stamina.isNotEmpty &&
        number.isNotEmpty &&
        height.isNotEmpty &&
        weight.isNotEmpty &&
        position.isNotEmpty) {
      // final data = FootballPlayer(
      //     name: playername,
      //     age: age,
      //     position: position,
      //     goals: stamina,
      //     height: height,
      //     weight: weight,
      //     jersey: nation);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => individualPlayerview(
                name: playername,
                age: age,
                nation: nation,
                position: position,
                jersy: stamina,
                height: height,
                weight: weight,
                strength: stamina)),
      );
    } else {
      print("error");
    }
  }
}
