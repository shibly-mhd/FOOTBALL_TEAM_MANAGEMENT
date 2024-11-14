import 'package:flutter/material.dart';
import 'package:football_teammanaging/functions/dbfunctions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class profilepage extends StatelessWidget {
  profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Profile",
          style: GoogleFonts.aclonica(fontSize: 18, color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.mode_standby_outlined,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 18,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/nav');
            },
            child: Icon(
              Iconsax.crown,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/page3');
            },
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 2),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blue,
                    backgroundImage:
                        AssetImage('assets/circle in circleimage.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '${profiledata!.name}',
                  style:
                      GoogleFonts.aclonica(color: Colors.white, fontSize: 24),
                )
                //
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size / 2.3,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 31, 27, 27),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      Navigator.pushNamed(context, '/page19');
                    },
                    child: Text(
                      'Complete your profile',
                      style: GoogleFonts.aclonica(
                          color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size / 25),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/page12');
              },
              child: Container(
                width: size / 2.3,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ad.jpeg'), fit: BoxFit.fill),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: size / 25),
            Padding(
              padding: EdgeInsets.only(right: 310),
              child: Text(
                'following',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              width: size / 2.3,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/barcelona.png'),
                    radius: 50,
                  ),
                  SizedBox(width: size / 120),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/bayern.png'),
                    radius: 50,
                  ),
                  SizedBox(width: size / 150),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/realm.jpeg'),
                    radius: 50,
                  ),
                  SizedBox(width: size / 120),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/chelsea.png'),
                    radius: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
