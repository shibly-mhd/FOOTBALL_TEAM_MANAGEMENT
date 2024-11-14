import 'package:flutter/material.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/model/userdata.dart';
import 'package:football_teammanaging/screens/page%2016%20allsquad.dart';
import 'package:football_teammanaging/screens/page1%20login.dart';
import 'package:football_teammanaging/screens/page10%20playerfiltering.dart';
import 'package:football_teammanaging/screens/page11%20matchstats.dart';
import 'package:football_teammanaging/screens/page12%20matchdetails.dart';
import 'package:football_teammanaging/screens/page13%20%20scheduling.dart';
import 'package:football_teammanaging/screens/page14%20view%20added%20company.dart';
import 'package:football_teammanaging/screens/page15%20navigation.dart';
import 'package:football_teammanaging/screens/page18%20profile.dart';
import 'package:football_teammanaging/screens/page19%20calender.dart';
import 'package:football_teammanaging/screens/page2%20signup.dart';
import 'package:football_teammanaging/screens/page3%20home.dart';
import 'package:football_teammanaging/screens/page4%20addcoach.dart';
import 'package:football_teammanaging/screens/page5%20coachsquadview.dart';
import 'package:football_teammanaging/screens/page6%20individualcoachdetailsview.dart';
import 'package:football_teammanaging/screens/page7%20addPlayer.dart';
import 'package:football_teammanaging/screens/page8%20playersquadview.dart';
import 'package:football_teammanaging/screens/page9%20individualPlayerview.dart';
import 'package:football_teammanaging/splash.dart';
import 'package:hive_flutter/adapters.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(FootballPlayerAdapter());
  Hive.registerAdapter(ProfileAdapter());
  await Hive.openBox<Profile>('profilebox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/page19': (context) => calender(),
        '/squad': (context) => allsquad(),
        '/nav': (context) => NaviagationPage(),
        "/splash": (context) => Splash(),
        "/page1": (context) => login(),
        "/page2": (context) => signup(),
        "/page3": (context) => home(),
        "/page4": (contect) => addCoachdetails(),
        "/page5": (contect) => coachsquadview(),
        "/page6": (contect) => individualcoachview(),
        "/page7": (contect) => addPlayerdetails(),
        "/page8": (contect) => playerSquadview(),
        // "/page9": (contect) => individualPlayerview(),
        "/page10": (contect) => PlayerFilter(),
        "/page11": (contect) => matchStats(),
        "/page12": (contect) => matchDetails(),
        "/page13": (contect) => Scheduling(),
        "/page14": (contect) => company(),
        "/page18": (contect) => profilepage(),
      },
    );
  }
}
