import 'package:flutter/material.dart';
import 'package:football_teammanaging/functions/dbfunctions.dart';
import 'package:football_teammanaging/screens/page15%20navigation.dart';
import 'package:football_teammanaging/screens/page2%20signup.dart';
import 'package:football_teammanaging/screens/page3%20home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

TextEditingController _usernamecontroller = TextEditingController();
TextEditingController _passcontroller = TextEditingController();

class _loginState extends State<login> {
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
                            'LOG IN TO CONTINUE',
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
                        SizedBox(
                          height: size.height / 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, "/page2");
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'already have an account?',
                                  style: GoogleFonts.aclonica(
                                      fontSize: 15, color: Colors.black),
                                ),
                                TextSpan(
                                    text: "Sign up",
                                    style: GoogleFonts.aclonica(
                                      fontSize: 19,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ))
                              ],
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
                    loginbtn();
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

  void loginbtn() async {
    final storedname = await profiledata!.name;
    final storedpass = await profiledata!.password;
    final name = _usernamecontroller.text.trim();
    final password = _passcontroller.text.trim();

    if (storedname == name && storedpass == password) {
      Navigator.pushNamed(context, '/page18');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('SUCCESSFULLY ENTERED'),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
      print("login success");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('LOGIN FAILED ,CHECK YOUR ENTERED DATA'),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
      print("login error");
    }
  }
}
