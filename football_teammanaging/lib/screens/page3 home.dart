import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.pink[400],
                      backgroundColor: Color(0xFFFFE3D8), // Text color
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "HOME ",
                      style:
                          TextStyle(fontSize: 18, color: Colors.purpleAccent),
                    ),
                  ),
                  //second elevated button

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.pink[400],
                      backgroundColor: const Color(0xFFFFE3D8), // Text color
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12), // Rounded corners
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/page1');
                      },
                      child: Text(
                        "LOG OUT ",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFEC407A)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 30,
              ),
              //
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 450,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(120),
                        bottomLeft: Radius.circular(120)),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/home.jpeg',
                      ),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 190, 176, 176)
                            .withOpacity(0.5),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 40,
              ),
              Stack(
                children: [
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        height: 350,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFCCCC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'add coach',
                          style: GoogleFonts.aclonica(
                              fontSize: 24,
                              color: Color.fromARGB(255, 228, 66, 66)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/page4');
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/image.jpg'),
                      ),
                    ),
                    bottom: 30,
                    left: 135,
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
