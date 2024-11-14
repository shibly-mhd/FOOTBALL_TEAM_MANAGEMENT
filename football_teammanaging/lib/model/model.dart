import 'package:hive/hive.dart';

part 'model.g.dart';

@HiveType(typeId: 0)
class FootballPlayer {
  @HiveField(0)
  String? name;

  @HiveField(1)
  String? age;

  @HiveField(2)
  String? position;

  @HiveField(3)
  String? goals;

  @HiveField(4)
  String? height;

  @HiveField(5)
  String? weight;

  @HiveField(6)
  String? jersey;

  // @HiveField(7)
  // final String image;

  FootballPlayer({
    required this.name,
    required this.age,
    required this.position,
    required this.goals,
    required this.height,
    required this.weight,
    required this.jersey,
    // required this.image
  });
}
