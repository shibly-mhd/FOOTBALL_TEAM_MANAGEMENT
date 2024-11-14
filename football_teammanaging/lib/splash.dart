import 'package:flutter/material.dart';
import 'package:football_teammanaging/screens/page1%20login.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    tologin();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash1.jpg'),
                        fit: BoxFit.fitHeight)),
              ),
              // inside container
              Positioned(
                top: 300,
                bottom: 250,
                left: 15,
                right: 15,
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              //first text

              Positioned(
                child: Text(
                  'lets organize your ',
                  style: GoogleFonts.aclonica(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Comic Sans MS',
                      letterSpacing: 3,
                      color: Colors.yellow),
                ),
                top: 400,
                left: 55,
              ),
              //
              Positioned(
                child: Text(
                  'dream team ',
                  style: GoogleFonts.aclonica(
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent[400]),
                ),
                top: 440,
                left: 95,
              ),

              Positioned(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/image.jpg', width: 70, height: 70),
                    ],
                  ),
                ),
                top: 660,
                left: 175,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> tologin() async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => login()),
    );
  }
}



//  .......REQUIRED CODES

///
/////
///////
/////////
// padding: EdgeInsets.only(left: 100, top: 450),
//  child: Text(
//                   '''lets organize your
//   dream team ''',
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.bold,
//                     color: Color.fromARGB(255, 217, 231, 85),
//                   ),
//                 ),

// ....................FOR REFERENCE
// CHAT GPT CODES

// body: Center(
//   child: Stack(
//     alignment: Alignment.center,
//     children: [
//       // Background Image
//       Positioned.fill(
//         child: Image.asset(
//           'assets/splash1.jpg', // Replace with your background image path
//           fit: BoxFit.cover,
//         ),
//       ),
//       // Text Over Background
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'let\'s organize your',
//             style: TextStyle(
//               fontFamily:
//                   'CustomFont1', // Use the name specified in pubspec.yaml
//               fontSize: 24,
//               color: Colors.yellow, // Light yellow color
//             ),
//           ),
//           Text(
//             'dream team',
//             style: TextStyle(
//               fontFamily:
//                   'CustomFont2', // Use the name specified in pubspec.yaml
//               fontSize: 32,
//               fontWeight: FontWeight.bold,
//               color: Colors.red, // Red color
//             ),
//           ),
//         ],
//       ),
//     ],
//   ),
// ),