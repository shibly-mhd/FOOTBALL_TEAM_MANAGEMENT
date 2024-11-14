import 'package:flutter/material.dart';
import 'package:football_teammanaging/functions/dbfunctions.dart';
import 'package:football_teammanaging/model/userdata.dart';
import 'package:football_teammanaging/screens/page15%20navigation.dart';
import 'package:football_teammanaging/screens/page18%20profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'page1 login.dart';

class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 250, left: 5, right: 5, bottom: 80),
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            'SIGN UP  TO LOGIN ',
                            style: GoogleFonts.aclonica(
                                fontSize: 27, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 13,
                        ),
                        TextFormField(
                          controller: _usernamecontroller,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 18,
                        ),
                        TextFormField(
                          controller: _passcontroller,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    register();
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/image.jpg'),
                  ),
                ),
                top: 690,
                left: 167,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> register() async {
    final username = _usernamecontroller.text.trim();
    final password = _passcontroller.text.trim();
    if (username.isNotEmpty && password.isNotEmpty) {
      final data1 = Profile(name: username, password: password);
      SaveProfile(data1);

      Navigator.pushReplacementNamed(context, "/page1");
    } else {
      print("error");
    }
  }
}
