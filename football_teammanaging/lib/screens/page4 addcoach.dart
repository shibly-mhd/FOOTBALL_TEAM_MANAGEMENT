import 'package:flutter/material.dart';
import 'package:football_teammanaging/functions/dbfunctions.dart';
import 'package:football_teammanaging/model/modelcoach.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

class addCoachdetails extends StatelessWidget {
  addCoachdetails({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController coachnamecontroller = TextEditingController();
    TextEditingController agecontroller = TextEditingController();
    TextEditingController coachinfocontroller = TextEditingController();
    TextEditingController rankcontroller = TextEditingController();

    final Box<Coach> coach = Hive.box<Coach>('coachesbox');

    Future<void> addcoach() async {}

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[400],
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Text(
                    'build a team',
                    style:
                        GoogleFonts.akatab(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              // next container
              Padding(
                padding: EdgeInsets.only(left: 30, top: 50),
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Text(
                    'Edit your Coach',
                    style:
                        GoogleFonts.akatab(fontSize: 26, color: Colors.black),
                  ),
                ),
              ),

              //container .........
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 25),
                    child: Container(
                      height: 600,
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
                    bottom: 390,
                    left: 165,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //text field containers
                  Padding(
                    padding: EdgeInsets.only(left: 70, top: 350),
                    child: Container(
                      width: 300,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: coachnamecontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.deepPurpleAccent,
                              labelText: "Field 1",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.deepPurpleAccent,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: agecontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.deepPurpleAccent,
                              labelText: "Field 2",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.deepPurpleAccent,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: coachinfocontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.deepPurpleAccent,
                              labelText: "Field 3",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.deepPurpleAccent,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: rankcontroller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.deepPurpleAccent,
                              labelText: "Field 4",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.deepPurpleAccent,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/page5');
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
}
