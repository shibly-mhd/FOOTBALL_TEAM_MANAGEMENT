import 'package:flutter/material.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/model/model.dart';
import 'package:football_teammanaging/model/userdata.dart';
import 'package:football_teammanaging/screens/page18%20profile.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/model.dart';

ValueNotifier<List<FootballPlayer>> Playernotifier = ValueNotifier([]);

Future<void> getplayer() async {
  final playerbox = await Hive.openBox<FootballPlayer>('playerdb');
  Playernotifier.value.clear();
  Playernotifier.value.addAll(playerbox.values);
}

Future<void> SaveProfile(Profile datavalue) async {
  final box = await Hive.openBox<Profile>('userdb');
  box.put("profile", datavalue);
  print('user input  is added as ');
}

final box = Hive.box<Profile>('userdb');
final profiledata = box.get("profile");

//

Future<void> saveplayer(FootballPlayer playervalue) async {
  final box = await Hive.openBox<FootballPlayer>("playerdb");
  box.add(playervalue);
  print("player is added to list ");
  getplayer();
}
