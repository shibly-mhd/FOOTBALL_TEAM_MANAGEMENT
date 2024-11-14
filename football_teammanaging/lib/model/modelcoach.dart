import 'package:hive_flutter/adapters.dart';
part 'modelcoach.g.dart';

@HiveType(typeId: 1)
class Coach {
  @HiveField(0)
  final String? coachname;
  @HiveField(1)
  final String? age;
  @HiveField(2)
  final String? state;
  @HiveField(3)
  final String? listinfo;

  Coach(
      {required this.coachname,
      required this.age,
      required this.state,
      required this.listinfo});
}
