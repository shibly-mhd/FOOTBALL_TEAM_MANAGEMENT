import 'package:flutter/material.dart';
import 'package:football_teammanaging/screens/page%2016%20allsquad.dart';
import 'package:football_teammanaging/screens/page11%20matchstats.dart';
import 'package:football_teammanaging/screens/page12%20matchdetails.dart';
import 'package:football_teammanaging/screens/page17%20alladding.dart';
import 'package:football_teammanaging/screens/page18%20profile.dart';
import 'package:iconsax/iconsax.dart';

class NaviagationPage extends StatefulWidget {
  const NaviagationPage({super.key});

  @override
  State<NaviagationPage> createState() => _NaviagationPageState();
}

class _NaviagationPageState extends State<NaviagationPage> {
  int indexNum = 0;

  List screens = [
    allsquad(),
    matchDetails(),
    alldetailsadd(),
    matchStats(),
    profilepage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(indexNum),
      //  AnimatedSwitcher(
      //   duration: Duration(milliseconds: 300),
      //   transitionBuilder: (Widget child, Animation<double> animation) {
      //     // Customize your animation here
      //     return ScaleTransition(scale: animation, child: child);
      //   },

      //   // This will be animated on switch
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home,
                size: 25,
                color: Colors.white,
              ),
              label: "home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.calendar_edit,
                size: 25,
                color: Colors.white,
              ),
              label: "macthes",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.add,
                size: 50,
                color: Colors.white,
              ),
              label: "add players",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.chart,
                size: 25,
                color: Colors.white,
              ),
              label: "chart",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.profile,
                size: 25,
                color: Colors.white,
              ),
              label: "profile",
              backgroundColor: Colors.black),
        ],
        showUnselectedLabels: false,
        selectedFontSize: 20,
        showSelectedLabels: true,
        selectedItemColor: Colors.white,
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
    );
  }
}
